// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firebase_functions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FirebaseFunctionsStateTearOff {
  const _$FirebaseFunctionsStateTearOff();

// ignore: unused_element
  _FirebaseFunctionsState call(
      {bool isLoading = false, @nullable dynamic result}) {
    return _FirebaseFunctionsState(
      isLoading: isLoading,
      result: result,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FirebaseFunctionsState = _$FirebaseFunctionsStateTearOff();

/// @nodoc
mixin _$FirebaseFunctionsState {
  bool get isLoading;
  @nullable
  dynamic get result;

  $FirebaseFunctionsStateCopyWith<FirebaseFunctionsState> get copyWith;
}

/// @nodoc
abstract class $FirebaseFunctionsStateCopyWith<$Res> {
  factory $FirebaseFunctionsStateCopyWith(FirebaseFunctionsState value,
          $Res Function(FirebaseFunctionsState) then) =
      _$FirebaseFunctionsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, @nullable dynamic result});
}

/// @nodoc
class _$FirebaseFunctionsStateCopyWithImpl<$Res>
    implements $FirebaseFunctionsStateCopyWith<$Res> {
  _$FirebaseFunctionsStateCopyWithImpl(this._value, this._then);

  final FirebaseFunctionsState _value;
  // ignore: unused_field
  final $Res Function(FirebaseFunctionsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      result: result == freezed ? _value.result : result as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseFunctionsStateCopyWith<$Res>
    implements $FirebaseFunctionsStateCopyWith<$Res> {
  factory _$FirebaseFunctionsStateCopyWith(_FirebaseFunctionsState value,
          $Res Function(_FirebaseFunctionsState) then) =
      __$FirebaseFunctionsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, @nullable dynamic result});
}

/// @nodoc
class __$FirebaseFunctionsStateCopyWithImpl<$Res>
    extends _$FirebaseFunctionsStateCopyWithImpl<$Res>
    implements _$FirebaseFunctionsStateCopyWith<$Res> {
  __$FirebaseFunctionsStateCopyWithImpl(_FirebaseFunctionsState _value,
      $Res Function(_FirebaseFunctionsState) _then)
      : super(_value, (v) => _then(v as _FirebaseFunctionsState));

  @override
  _FirebaseFunctionsState get _value => super._value as _FirebaseFunctionsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object result = freezed,
  }) {
    return _then(_FirebaseFunctionsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      result: result == freezed ? _value.result : result as dynamic,
    ));
  }
}

/// @nodoc
class _$_FirebaseFunctionsState extends _FirebaseFunctionsState
    with DiagnosticableTreeMixin {
  const _$_FirebaseFunctionsState(
      {this.isLoading = false, @nullable this.result})
      : assert(isLoading != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final dynamic result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseFunctionsState(isLoading: $isLoading, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirebaseFunctionsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseFunctionsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(result);

  @override
  _$FirebaseFunctionsStateCopyWith<_FirebaseFunctionsState> get copyWith =>
      __$FirebaseFunctionsStateCopyWithImpl<_FirebaseFunctionsState>(
          this, _$identity);
}

abstract class _FirebaseFunctionsState extends FirebaseFunctionsState {
  const _FirebaseFunctionsState._() : super._();
  const factory _FirebaseFunctionsState(
      {bool isLoading, @nullable dynamic result}) = _$_FirebaseFunctionsState;

  @override
  bool get isLoading;
  @override
  @nullable
  dynamic get result;
  @override
  _$FirebaseFunctionsStateCopyWith<_FirebaseFunctionsState> get copyWith;
}
