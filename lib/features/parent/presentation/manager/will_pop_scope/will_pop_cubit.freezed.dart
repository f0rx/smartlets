// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'will_pop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WillPopStateTearOff {
  const _$WillPopStateTearOff();

// ignore: unused_element
  _WillPopState call({bool canPop = false}) {
    return _WillPopState(
      canPop: canPop,
    );
  }
}

// ignore: unused_element
const $WillPopState = _$WillPopStateTearOff();

mixin _$WillPopState {
  bool get canPop;

  $WillPopStateCopyWith<WillPopState> get copyWith;
}

abstract class $WillPopStateCopyWith<$Res> {
  factory $WillPopStateCopyWith(
          WillPopState value, $Res Function(WillPopState) then) =
      _$WillPopStateCopyWithImpl<$Res>;
  $Res call({bool canPop});
}

class _$WillPopStateCopyWithImpl<$Res> implements $WillPopStateCopyWith<$Res> {
  _$WillPopStateCopyWithImpl(this._value, this._then);

  final WillPopState _value;
  // ignore: unused_field
  final $Res Function(WillPopState) _then;

  @override
  $Res call({
    Object canPop = freezed,
  }) {
    return _then(_value.copyWith(
      canPop: canPop == freezed ? _value.canPop : canPop as bool,
    ));
  }
}

abstract class _$WillPopStateCopyWith<$Res>
    implements $WillPopStateCopyWith<$Res> {
  factory _$WillPopStateCopyWith(
          _WillPopState value, $Res Function(_WillPopState) then) =
      __$WillPopStateCopyWithImpl<$Res>;
  @override
  $Res call({bool canPop});
}

class __$WillPopStateCopyWithImpl<$Res> extends _$WillPopStateCopyWithImpl<$Res>
    implements _$WillPopStateCopyWith<$Res> {
  __$WillPopStateCopyWithImpl(
      _WillPopState _value, $Res Function(_WillPopState) _then)
      : super(_value, (v) => _then(v as _WillPopState));

  @override
  _WillPopState get _value => super._value as _WillPopState;

  @override
  $Res call({
    Object canPop = freezed,
  }) {
    return _then(_WillPopState(
      canPop: canPop == freezed ? _value.canPop : canPop as bool,
    ));
  }
}

class _$_WillPopState implements _WillPopState {
  const _$_WillPopState({this.canPop = false}) : assert(canPop != null);

  @JsonKey(defaultValue: false)
  @override
  final bool canPop;

  @override
  String toString() {
    return 'WillPopState(canPop: $canPop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WillPopState &&
            (identical(other.canPop, canPop) ||
                const DeepCollectionEquality().equals(other.canPop, canPop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canPop);

  @override
  _$WillPopStateCopyWith<_WillPopState> get copyWith =>
      __$WillPopStateCopyWithImpl<_WillPopState>(this, _$identity);
}

abstract class _WillPopState implements WillPopState {
  const factory _WillPopState({bool canPop}) = _$_WillPopState;

  @override
  bool get canPop;
  @override
  _$WillPopStateCopyWith<_WillPopState> get copyWith;
}
