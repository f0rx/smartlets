part of 'guardian_auth_cubit.dart';

@freezed
@immutable
abstract class GuardianAuthState implements _$GuardianAuthState {
  const GuardianAuthState._();

  const factory GuardianAuthState({
    @nullable Guardian guardian,
    @Default(KtList.empty()) KtList<Guardian> parents,
    @nullable Either<FirestoreAuthFailure, Unit> status,
    @Default(false) bool isLoading,
  }) = _GuardianAuthState;

  factory GuardianAuthState.init() => GuardianAuthState();
}
