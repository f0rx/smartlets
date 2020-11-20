part of 'on_boarding_cubit.dart';

@freezed
@immutable
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(false) bool isLoading,
    @Default(false) bool shouldListen,
    @Default(false) bool hasStableInternet,
    @nullable Roles role,
  }) = _OnBoardingState;
}
