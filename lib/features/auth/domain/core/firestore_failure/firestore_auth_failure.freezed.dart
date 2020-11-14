// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firestore_auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FirestoreAuthFailureTearOff {
  const _$FirestoreAuthFailureTearOff();

// ignore: unused_element
  _FirestoreAuthFailure call(String message) {
    return _FirestoreAuthFailure(
      message,
    );
  }

// ignore: unused_element
  _UnknownFirestoreAuthFailure unknown(
      {@required String message, String code}) {
    return _UnknownFirestoreAuthFailure(
      message: message,
      code: code,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FirestoreAuthFailure = _$FirestoreAuthFailureTearOff();

/// @nodoc
mixin _$FirestoreAuthFailure {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String message), {
    @required Result unknown(String message, String code),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String message), {
    Result unknown(String message, String code),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_FirestoreAuthFailure value), {
    @required Result unknown(_UnknownFirestoreAuthFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_FirestoreAuthFailure value), {
    Result unknown(_UnknownFirestoreAuthFailure value),
    @required Result orElse(),
  });

  $FirestoreAuthFailureCopyWith<FirestoreAuthFailure> get copyWith;
}

/// @nodoc
abstract class $FirestoreAuthFailureCopyWith<$Res> {
  factory $FirestoreAuthFailureCopyWith(FirestoreAuthFailure value,
          $Res Function(FirestoreAuthFailure) then) =
      _$FirestoreAuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FirestoreAuthFailureCopyWithImpl<$Res>
    implements $FirestoreAuthFailureCopyWith<$Res> {
  _$FirestoreAuthFailureCopyWithImpl(this._value, this._then);

  final FirestoreAuthFailure _value;
  // ignore: unused_field
  final $Res Function(FirestoreAuthFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$FirestoreAuthFailureCopyWith<$Res>
    implements $FirestoreAuthFailureCopyWith<$Res> {
  factory _$FirestoreAuthFailureCopyWith(_FirestoreAuthFailure value,
          $Res Function(_FirestoreAuthFailure) then) =
      __$FirestoreAuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$FirestoreAuthFailureCopyWithImpl<$Res>
    extends _$FirestoreAuthFailureCopyWithImpl<$Res>
    implements _$FirestoreAuthFailureCopyWith<$Res> {
  __$FirestoreAuthFailureCopyWithImpl(
      _FirestoreAuthFailure _value, $Res Function(_FirestoreAuthFailure) _then)
      : super(_value, (v) => _then(v as _FirestoreAuthFailure));

  @override
  _FirestoreAuthFailure get _value => super._value as _FirestoreAuthFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_FirestoreAuthFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_FirestoreAuthFailure extends _FirestoreAuthFailure {
  const _$_FirestoreAuthFailure(this.message)
      : assert(message != null),
        super._();

  @override
  final String message;

  @override
  String toString() {
    return 'FirestoreAuthFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirestoreAuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FirestoreAuthFailureCopyWith<_FirestoreAuthFailure> get copyWith =>
      __$FirestoreAuthFailureCopyWithImpl<_FirestoreAuthFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String message), {
    @required Result unknown(String message, String code),
  }) {
    assert($default != null);
    assert(unknown != null);
    return $default(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String message), {
    Result unknown(String message, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_FirestoreAuthFailure value), {
    @required Result unknown(_UnknownFirestoreAuthFailure value),
  }) {
    assert($default != null);
    assert(unknown != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_FirestoreAuthFailure value), {
    Result unknown(_UnknownFirestoreAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FirestoreAuthFailure extends FirestoreAuthFailure {
  const _FirestoreAuthFailure._() : super._();
  const factory _FirestoreAuthFailure(String message) = _$_FirestoreAuthFailure;

  @override
  String get message;
  @override
  _$FirestoreAuthFailureCopyWith<_FirestoreAuthFailure> get copyWith;
}

/// @nodoc
abstract class _$UnknownFirestoreAuthFailureCopyWith<$Res>
    implements $FirestoreAuthFailureCopyWith<$Res> {
  factory _$UnknownFirestoreAuthFailureCopyWith(
          _UnknownFirestoreAuthFailure value,
          $Res Function(_UnknownFirestoreAuthFailure) then) =
      __$UnknownFirestoreAuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, String code});
}

/// @nodoc
class __$UnknownFirestoreAuthFailureCopyWithImpl<$Res>
    extends _$FirestoreAuthFailureCopyWithImpl<$Res>
    implements _$UnknownFirestoreAuthFailureCopyWith<$Res> {
  __$UnknownFirestoreAuthFailureCopyWithImpl(
      _UnknownFirestoreAuthFailure _value,
      $Res Function(_UnknownFirestoreAuthFailure) _then)
      : super(_value, (v) => _then(v as _UnknownFirestoreAuthFailure));

  @override
  _UnknownFirestoreAuthFailure get _value =>
      super._value as _UnknownFirestoreAuthFailure;

  @override
  $Res call({
    Object message = freezed,
    Object code = freezed,
  }) {
    return _then(_UnknownFirestoreAuthFailure(
      message: message == freezed ? _value.message : message as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
class _$_UnknownFirestoreAuthFailure extends _UnknownFirestoreAuthFailure {
  _$_UnknownFirestoreAuthFailure({@required this.message, this.code})
      : assert(message != null),
        super._();

  @override
  final String message;
  @override
  final String code;

  @override
  String toString() {
    return 'FirestoreAuthFailure.unknown(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownFirestoreAuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code);

  @override
  _$UnknownFirestoreAuthFailureCopyWith<_UnknownFirestoreAuthFailure>
      get copyWith => __$UnknownFirestoreAuthFailureCopyWithImpl<
          _UnknownFirestoreAuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String message), {
    @required Result unknown(String message, String code),
  }) {
    assert($default != null);
    assert(unknown != null);
    return unknown(message, code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String message), {
    Result unknown(String message, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_FirestoreAuthFailure value), {
    @required Result unknown(_UnknownFirestoreAuthFailure value),
  }) {
    assert($default != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_FirestoreAuthFailure value), {
    Result unknown(_UnknownFirestoreAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFirestoreAuthFailure extends FirestoreAuthFailure {
  _UnknownFirestoreAuthFailure._() : super._();
  factory _UnknownFirestoreAuthFailure(
      {@required String message, String code}) = _$_UnknownFirestoreAuthFailure;

  @override
  String get message;
  String get code;
  @override
  _$UnknownFirestoreAuthFailureCopyWith<_UnknownFirestoreAuthFailure>
      get copyWith;
}
