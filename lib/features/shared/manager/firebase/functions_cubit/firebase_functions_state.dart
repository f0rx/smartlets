part of 'firebase_functions_cubit.dart';

@freezed
@immutable
abstract class FirebaseFunctionsState implements _$FirebaseFunctionsState {
  @protected
  const FirebaseFunctionsState._();

  const factory FirebaseFunctionsState({
    @Default(false) bool isLoading,
    @nullable dynamic result,
  }) = _FirebaseFunctionsState;

  factory FirebaseFunctionsState.init() => FirebaseFunctionsState();
}
