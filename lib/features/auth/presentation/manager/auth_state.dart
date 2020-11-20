part of 'auth_bloc.dart';

@freezed
@immutable
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required DisplayName displayName,
    @required EmailAddress emailAddress,
    @required EmailAddress guardianEmailAddress,
    @required Gender gender,
    @required Password password,
    @required Password newPassword,
    Roles subscription,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(true) bool passwordHidden,
    @Default(const None()) Option<Either<AuthFailure, Unit>> authStatus,
  }) = _AuthState;

  factory AuthState.init() => AuthState(
        displayName: DisplayName(""),
        emailAddress: EmailAddress(""),
        guardianEmailAddress: EmailAddress(""),
        gender: Gender(GenderType.Unspecified),
        password: Password(""),
        newPassword: Password(""),
      );
}
