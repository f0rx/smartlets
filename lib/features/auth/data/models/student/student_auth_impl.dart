import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smartlets/features/auth/data/models/student/student_auth_dto.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/data/error_codes.dart';
import 'package:smartlets/utils/utils.dart';

@LazySingleton(as: StudentAuthFacade)
class StudentAuthImpl extends StudentAuthFacade {
  final FirebaseFirestore _firestore;

  StudentAuthImpl(this._firestore);

  @override
  Future<Either<StudentAuthFailure, Unit>> create(Student student) async {
    try {
      final _studentDoc = _firestore.students.student;
      // If User data doesn't exist
      if (!(await _studentDoc.get()).exists)
        await _studentDoc.set(
          StudentAuthDTO.fromDomain(student).toJson(),
          SetOptions(merge: true),
        );
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<StudentAuthFailure, Student>> get read async* {
    final _studentDoc = _firestore.students.student;
    yield* _studentDoc
        .snapshots(includeMetadataChanges: true)
        .map<Either<StudentAuthFailure, Student>>((doc) => right(StudentAuthDTO.fromDocument(doc).domain))
        .onErrorReturnWith(handleFirestoreException);
  }

  @override
  Future<Either<StudentAuthFailure, Unit>> update(Student student, [Duration duration = Duration.zero]) async {
    try {
      final _studentDoc = _firestore.students.student;
      // wait specific seconds then retry operation
      await Future.delayed(
          duration,
          () async => await _studentDoc.update(
                StudentAuthDTO.fromDomain(student).toJson(),
              ));
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == NOT_FOUND) {
        // Wait 5 seconds then retry operation
        await this.update(student, Duration(seconds: 5));
      }
      return handleFirestoreException(e);
    }
  }

  @override
  Future<Either<StudentAuthFailure, Unit>> get delete async {
    try {
      await _firestore.students.student.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return handleFirestoreException(e);
    }
  }

  @override
  Stream<Either<StudentAuthFailure, KtList<Student>>> get watch async* {
    final _collection = _firestore.students;
    yield* _collection
        .orderBy(DbConstants.ORDER_BY, descending: true)
        .snapshots(includeMetadataChanges: true)
        .map<Either<StudentAuthFailure, KtList<Student>>>((snapshot) => right(
              snapshot.docs.map((doc) => StudentAuthDTO.fromDocument(doc).domain).toImmutableList(),
            ))
        .onErrorReturnWith(handleFirestoreException);
  }
}
