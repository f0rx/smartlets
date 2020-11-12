import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/auth/data/repositories/auth_repo.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';

abstract class StudentAuthFacade {
  Stream<Either<StudentAuthFailure, KtList<Student>>> get watch;

  Future<Either<StudentAuthFailure, Unit>> create(Student student);

  Stream<Either<StudentAuthFailure, Student>> get read;

  Future<Either<StudentAuthFailure, Unit>> update(Student student);

  Future<Either<StudentAuthFailure, Unit>> get delete;

  @protected
  Either<StudentAuthFailure, R> handleFirestoreException<R>(e) {
    if (e is FirebaseException) {
      String error = e.code;
      String message = e.message;

      switch (error) {
        case ABORTED:
          return left(StudentAuthFailure.aborted(message));
        case ALREADY_EXISTS:
          return left(StudentAuthFailure.alreadyExists(message));
        case CANCELLED:
          return left(StudentAuthFailure.cancelled(message));
        case DATA_LOSS:
          return left(StudentAuthFailure.dataLoss(message));
        case DEADLINE_EXCEEDED:
          return left(StudentAuthFailure.deadlineExceeded(message));
        case INVALID_ARGUMENT:
          return left(StudentAuthFailure.invalidArguments(message));
        case NOT_FOUND:
          return left(StudentAuthFailure.notFound(message));
        case OK:
          return left(StudentAuthFailure.ok(message));
        case OUT_OF_RANGE:
          return left(StudentAuthFailure.outOfRange(message));
        case PERMISSION_DENIED:
          return left(StudentAuthFailure.insufficientPermissions(message));
        case UNAUTHENTICATED:
          return left(StudentAuthFailure.unAuthenticated(message));
        case UNAVAILABLE:
          return left(StudentAuthFailure.unAvailable(message));
        case UNIMPLEMENTED:
          return left(StudentAuthFailure.unImplemented(message));
        case RESOURCE_EXHAUSTED:
        case FAILED_PRECONDITION:
        case INTERNAL:
        case UNKNOWN:
        default:
          return left(StudentAuthFailure.unknown(message: message));
      }
    }
    return left(StudentAuthFailure.unknown(message: "${e.toString()}"));
  }
}
