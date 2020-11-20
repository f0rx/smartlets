import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:retry/retry.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartlets/features/auth/data/repositories/guardian_auth_impl.dart';
import 'package:smartlets/features/auth/data/repositories/student_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

@LazySingleton()
class UserAuthImpl with FirestoreAuthMixin<User> {
  final FirebaseFirestore _firestore;
  final DataConnectionChecker _connectionChecker;
  final StudentAuthImpl _studentAuthImpl;
  final GuardianAuthImpl _guardianAuthImpl;
  GetOptions options = GetOptions(source: Source.serverAndCache);
  DocumentSnapshot _temp;

  UserAuthImpl(this._firestore, this._connectionChecker, this._studentAuthImpl, this._guardianAuthImpl);

  Future<bool> get checkHasInternet async {
    var conn = await _connectionChecker.hasConnection;
    if (conn)
      options = GetOptions(source: Source.server);
    else
      options = GetOptions(source: Source.cache);
    return conn;
  }

  @override
  Future<User> get single async {
    await checkHasInternet;
    final DocumentSnapshot doc = await _firestore.users.user.get(options);
    return UserDTO.fromDocument(doc).domain;
  }

  @override
  Future<bool> get docExists async {
    await checkHasInternet;
    _temp = await _firestore.users.user.get(options);
    return _temp != null && _temp.exists;
  }

  @override
  Future<bool> isFieldNull(String field) async => await docExists && _temp.data()[field] == null;

  @override
  Future<Either<FirestoreAuthFailure, Unit>> create(User user) async {
    try {
      await checkHasInternet;
      final _userDoc = _firestore.users.user;
      // If User doc doesn't exist
      if (!(await _userDoc.get(options)).exists)
        await _userDoc.set(
          UserDTO.fromDomain(user).toJson(),
          SetOptions(merge: true),
        );
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<FirestoreAuthFailure, User>> get read async* {
    final _userRef = _firestore.users.user;
    yield* _userRef
        .snapshots(includeMetadataChanges: true)
        .map<Either<FirestoreAuthFailure, User>>((doc) => right(UserDTO.fromDocument(doc).domain))
        .onErrorReturnWith(handleFirestoreException);
  }

  @override
  Future<Either<FirestoreAuthFailure, Unit>> update(
    User user, {
    Duration timeout = const Duration(seconds: 8),
  }) async {
    try {
      final _userRef = _firestore.users.user;

      await Future.wait([
        _userRef.update(UserDTO.fromDomain(user).toJson()),
        BlocProvider.of<OnBoardingCubit>(App.context).state?.role?.fold(
              parent: () async => await _guardianAuthImpl.update(user.asGuardian()),
              student: () async => await _studentAuthImpl.update(user.asStudent()),
            ),
      ]);

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == NOT_FOUND) {
        // Wait 5 seconds then retry operation
        retry(
          () => this.update(user).timeout(timeout),
          // Retry on SocketException or TimeoutException
          retryIf: (e) => e is SocketException || e is TimeoutException,
        );
      }
      return handleFirestoreException(e);
    } on FirestoreAuthFailure catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<FirestoreAuthFailure, Unit>> get delete async {
    try {
      await _firestore.users.user.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<FirestoreAuthFailure, KtList<User>>> get watch async* {
    final _collection = _firestore.users;
    yield* _collection
        .orderBy(DbConstants.ORDER_BY, descending: true)
        .snapshots(includeMetadataChanges: true)
        .map<Either<FirestoreAuthFailure, KtList<User>>>((snapshot) => right(
              snapshot.docs.map((doc) => UserDTO.fromDocument(doc).domain).toImmutableList(),
            ))
        .onErrorReturnWith(handleFirestoreException);
  }
}
