// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'on_boarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnBoardingStateTearOff {
  const _$OnBoardingStateTearOff();

// ignore: unused_element
  _OnBoardingState call(
      {bool isLoading = false,
      bool shouldListen = false,
      bool hasStableInternet = false,
      Subscription subscription = Subscription.student}) {
    return _OnBoardingState(
      isLoading: isLoading,
      shouldListen: shouldListen,
      hasStableInternet: hasStableInternet,
      subscription: subscription,
    );
  }
}

// ignore: unused_element
const $OnBoardingState = _$OnBoardingStateTearOff();

mixin _$OnBoardingState {
  bool get isLoading;
  bool get shouldListen;
  bool get hasStableInternet;
  Subscription get subscription;

  $OnBoardingStateCopyWith<OnBoardingState> get copyWith;
}

abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool shouldListen,
      bool hasStableInternet,
      Subscription subscription});
}

class _$OnBoardingStateCopyWithImpl<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  final OnBoardingState _value;
  // ignore: unused_field
  final $Res Function(OnBoardingState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object shouldListen = freezed,
    Object hasStableInternet = freezed,
    Object subscription = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      shouldListen:
          shouldListen == freezed ? _value.shouldListen : shouldListen as bool,
      hasStableInternet: hasStableInternet == freezed
          ? _value.hasStableInternet
          : hasStableInternet as bool,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription as Subscription,
    ));
  }
}

abstract class _$OnBoardingStateCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$OnBoardingStateCopyWith(
          _OnBoardingState value, $Res Function(_OnBoardingState) then) =
      __$OnBoardingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool shouldListen,
      bool hasStableInternet,
      Subscription subscription});
}

class __$OnBoardingStateCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res>
    implements _$OnBoardingStateCopyWith<$Res> {
  __$OnBoardingStateCopyWithImpl(
      _OnBoardingState _value, $Res Function(_OnBoardingState) _then)
      : super(_value, (v) => _then(v as _OnBoardingState));

  @override
  _OnBoardingState get _value => super._value as _OnBoardingState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object shouldListen = freezed,
    Object hasStableInternet = freezed,
    Object subscription = freezed,
  }) {
    return _then(_OnBoardingState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      shouldListen:
          shouldListen == freezed ? _value.shouldListen : shouldListen as bool,
      hasStableInternet: hasStableInternet == freezed
          ? _value.hasStableInternet
          : hasStableInternet as bool,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription as Subscription,
    ));
  }
}

class _$_OnBoardingState implements _OnBoardingState {
  const _$_OnBoardingState(
      {this.isLoading = false,
      this.shouldListen = false,
      this.hasStableInternet = false,
      this.subscription = Subscription.student})
      : assert(isLoading != null),
        assert(shouldListen != null),
        assert(hasStableInternet != null),
        assert(subscription != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool shouldListen;
  @JsonKey(defaultValue: false)
  @override
  final bool hasStableInternet;
  @JsonKey(defaultValue: Subscription.student)
  @override
  final Subscription subscription;

  @override
  String toString() {
    return 'OnBoardingState(isLoading: $isLoading, shouldListen: $shouldListen, hasStableInternet: $hasStableInternet, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnBoardingState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.shouldListen, shouldListen) ||
                const DeepCollectionEquality()
                    .equals(other.shouldListen, shouldListen)) &&
            (identical(other.hasStableInternet, hasStableInternet) ||
                const DeepCollectionEquality()
                    .equals(other.hasStableInternet, hasStableInternet)) &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(shouldListen) ^
      const DeepCollectionEquality().hash(hasStableInternet) ^
      const DeepCollectionEquality().hash(subscription);

  @override
  _$OnBoardingStateCopyWith<_OnBoardingState> get copyWith =>
      __$OnBoardingStateCopyWithImpl<_OnBoardingState>(this, _$identity);
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState(
      {bool isLoading,
      bool shouldListen,
      bool hasStableInternet,
      Subscription subscription}) = _$_OnBoardingState;

  @override
  bool get isLoading;
  @override
  bool get shouldListen;
  @override
  bool get hasStableInternet;
  @override
  Subscription get subscription;
  @override
  _$OnBoardingStateCopyWith<_OnBoardingState> get copyWith;
}
