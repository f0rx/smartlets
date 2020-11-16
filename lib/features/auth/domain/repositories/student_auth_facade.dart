import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/auth/data/repositories/export.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';

abstract class StudentAuthFacade {
  Future<Student> get single;

  Stream<Either<FirestoreAuthFailure, KtList<Student>>> get watch;

  Future<Either<FirestoreAuthFailure, Unit>> create(Student student);

  Stream<Either<FirestoreAuthFailure, Student>> get read;

  Future<Either<FirestoreAuthFailure, Unit>> update(Student student, {Duration timeout = const Duration(seconds: 8)});

  Future<Either<FirestoreAuthFailure, Unit>> get delete;

  @protected
  Either<FirestoreAuthFailure, R> handleFirestoreException<R>(e) {
    if (e is FirebaseException) {
      String error = e.code;
      String message = e.message;

      switch (error) {
        case ABORTED:
          return left(FirestoreAuthFailure.aborted(message));
        case ALREADY_EXISTS:
          return left(FirestoreAuthFailure.alreadyExists(message));
        case CANCELLED:
          return left(FirestoreAuthFailure.cancelled(message));
        case DATA_LOSS:
          return left(FirestoreAuthFailure.dataLoss(message));
        case DEADLINE_EXCEEDED:
          return left(FirestoreAuthFailure.deadlineExceeded(message));
        case INVALID_ARGUMENT:
          return left(FirestoreAuthFailure.invalidArguments(message));
        case NOT_FOUND:
          return left(FirestoreAuthFailure.notFound(message));
        case OK:
          return left(FirestoreAuthFailure.ok(message));
        case OUT_OF_RANGE:
          return left(FirestoreAuthFailure.outOfRange(message));
        case PERMISSION_DENIED:
          return left(FirestoreAuthFailure.insufficientPermissions(message));
        case UNAUTHENTICATED:
          return left(FirestoreAuthFailure.unAuthenticated(message));
        case UNAVAILABLE:
          return left(FirestoreAuthFailure.unAvailable(message));
        case UNIMPLEMENTED:
          return left(FirestoreAuthFailure.unImplemented(message));
        case RESOURCE_EXHAUSTED:
        case FAILED_PRECONDITION:
        case INTERNAL:
        case UNKNOWN:
        default:
          return left(FirestoreAuthFailure.unknown(message: message));
      }
    }
    return left(FirestoreAuthFailure.unknown(message: "${e.toString()}"));
  }
}
