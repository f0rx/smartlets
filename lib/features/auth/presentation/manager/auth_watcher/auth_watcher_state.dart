part of 'auth_watcher_cubit.dart';

@freezed
@immutable
abstract class AuthWatcherState implements _$AuthWatcherState {
  const AuthWatcherState._();

  const factory AuthWatcherState({
    @Default(false) bool isLoading,
    @nullable User user,
    @Default(false) bool isAuthenticated,
    @Default(false) bool idTokenChanged,
  }) = _AuthWatcherState;

  factory AuthWatcherState.init() => AuthWatcherState();
}
