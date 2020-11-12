import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'student_auth_failure.freezed.dart';

@freezed
@immutable
abstract class StudentAuthFailure implements _$StudentAuthFailure, Failure<String> {
  const StudentAuthFailure._();

  const factory StudentAuthFailure(String message) = _StudentAuthFailure;

  factory StudentAuthFailure.aborted(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.alreadyExists(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.ok(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.cancelled(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.notFound(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.invalidArguments(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.deadlineExceeded(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.dataLoss(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.outOfRange(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.insufficientPermissions(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.unAuthenticated(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.unAvailable(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.unImplemented(String message) => StudentAuthFailure(message);

  factory StudentAuthFailure.unknown({
    @required String message,
    String code,
  }) = _UnknownStudentAuthFailure;
}
