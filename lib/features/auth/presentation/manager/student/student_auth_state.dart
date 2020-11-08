part of 'student_auth_cubit.dart';

@freezed
@immutable
abstract class StudentAuthState implements _$StudentAuthState {
  const StudentAuthState._();

  const factory StudentAuthState({
    @nullable Student student,
    @Default(KtList.empty()) KtList<Student> students,
    @nullable Either<StudentAuthFailure, Unit> status,
    @Default(false) bool isLoading,
  }) = _StudentAuthState;

  factory StudentAuthState.init() => StudentAuthState();
}
