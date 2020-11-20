part of 'user_auth_cubit.dart';

@freezed
@immutable
abstract class UserAuthState implements _$UserAuthState {
  @protected
  const UserAuthState._();

  const factory UserAuthState({
    @nullable User user,
    @Default(KtList.empty()) KtList<User> users,
    @nullable Either<FirestoreAuthFailure, Unit> status,
    @Default(false) bool isLoading,
  }) = _UserAuthState;

  factory UserAuthState.init() => UserAuthState();
}
