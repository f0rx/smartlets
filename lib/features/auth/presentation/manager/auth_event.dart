part of 'auth_bloc.dart';

@freezed
@immutable
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.displayNameChanged(String input) = _DisplayNameChanged;

  const factory AuthEvent.emailChanged(String email) = _EmailChanged;

  const factory AuthEvent.passwordChanged(String password, {FIELD_VALIDATION mode}) = _PasswordChanged;

  const factory AuthEvent.newPasswordChanged(String newPassword, {FIELD_VALIDATION mode}) = _NewPasswordChanged;

  const factory AuthEvent.toggledPasswordVisibility() = _ToggledPasswordVisibility;

  const factory AuthEvent.toggledSnackBarVisibility([bool value]) = _ToggledSnackBarVisibility;

  const factory AuthEvent.signInWithEmailAndPassword() = _SignInWithEmailAndPassword;

  const factory AuthEvent.createAccountWithEmailAndPassword() = _CreateAccountWithEmailAndPassword;

  const factory AuthEvent.updateProfile() = _UpdateProfile;

  const factory AuthEvent.emailPasswordReset() = _EmailPasswordReset;

  const factory AuthEvent.updatePassword() = _UpdatePassword;

  const factory AuthEvent.signInWithGoogle([@nullable Object incoming]) = _SignInWithGoogle;

  const factory AuthEvent.signInWithFacebook([@nullable Object incoming]) = _SignInWithFacebook;

  const factory AuthEvent.signInWithTwitter([@nullable Object incoming]) = _SignInWithTwitter;

  const factory AuthEvent.signInWithCredentials({
    @nullable Object credential,
    @nullable AuthProvider provider,
    @nullable Object incoming,
  }) = _SignInWithCredentials;

  const factory AuthEvent.signOut() = _SignOut;
}
