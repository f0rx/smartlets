// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student_auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StudentAuthFailureTearOff {
  const _$StudentAuthFailureTearOff();

// ignore: unused_element
  _StudentAuthFailure call(String message) {
    return _StudentAuthFailure(
      message,
    );
  }

// ignore: unused_element
  _UnknownStudentAuthFailure unknown({@required String message, String code}) {
    return _UnknownStudentAuthFailure(
      message: message,
      code: code,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StudentAuthFailure = _$StudentAuthFailureTearOff();

/// @nodoc
mixin _$StudentAuthFailure {
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
    Result $default(_StudentAuthFailure value), {
    @required Result unknown(_UnknownStudentAuthFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_StudentAuthFailure value), {
    Result unknown(_UnknownStudentAuthFailure value),
    @required Result orElse(),
  });

  $StudentAuthFailureCopyWith<StudentAuthFailure> get copyWith;
}

/// @nodoc
abstract class $StudentAuthFailureCopyWith<$Res> {
  factory $StudentAuthFailureCopyWith(
          StudentAuthFailure value, $Res Function(StudentAuthFailure) then) =
      _$StudentAuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$StudentAuthFailureCopyWithImpl<$Res>
    implements $StudentAuthFailureCopyWith<$Res> {
  _$StudentAuthFailureCopyWithImpl(this._value, this._then);

  final StudentAuthFailure _value;
  // ignore: unused_field
  final $Res Function(StudentAuthFailure) _then;

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
abstract class _$StudentAuthFailureCopyWith<$Res>
    implements $StudentAuthFailureCopyWith<$Res> {
  factory _$StudentAuthFailureCopyWith(
          _StudentAuthFailure value, $Res Function(_StudentAuthFailure) then) =
      __$StudentAuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$StudentAuthFailureCopyWithImpl<$Res>
    extends _$StudentAuthFailureCopyWithImpl<$Res>
    implements _$StudentAuthFailureCopyWith<$Res> {
  __$StudentAuthFailureCopyWithImpl(
      _StudentAuthFailure _value, $Res Function(_StudentAuthFailure) _then)
      : super(_value, (v) => _then(v as _StudentAuthFailure));

  @override
  _StudentAuthFailure get _value => super._value as _StudentAuthFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_StudentAuthFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_StudentAuthFailure extends _StudentAuthFailure {
  const _$_StudentAuthFailure(this.message)
      : assert(message != null),
        super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StudentAuthFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StudentAuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$StudentAuthFailureCopyWith<_StudentAuthFailure> get copyWith =>
      __$StudentAuthFailureCopyWithImpl<_StudentAuthFailure>(this, _$identity);

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
    Result $default(_StudentAuthFailure value), {
    @required Result unknown(_UnknownStudentAuthFailure value),
  }) {
    assert($default != null);
    assert(unknown != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_StudentAuthFailure value), {
    Result unknown(_UnknownStudentAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _StudentAuthFailure extends StudentAuthFailure {
  const _StudentAuthFailure._() : super._();
  const factory _StudentAuthFailure(String message) = _$_StudentAuthFailure;

  @override
  String get message;
  @override
  _$StudentAuthFailureCopyWith<_StudentAuthFailure> get copyWith;
}

/// @nodoc
abstract class _$UnknownStudentAuthFailureCopyWith<$Res>
    implements $StudentAuthFailureCopyWith<$Res> {
  factory _$UnknownStudentAuthFailureCopyWith(_UnknownStudentAuthFailure value,
          $Res Function(_UnknownStudentAuthFailure) then) =
      __$UnknownStudentAuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, String code});
}

/// @nodoc
class __$UnknownStudentAuthFailureCopyWithImpl<$Res>
    extends _$StudentAuthFailureCopyWithImpl<$Res>
    implements _$UnknownStudentAuthFailureCopyWith<$Res> {
  __$UnknownStudentAuthFailureCopyWithImpl(_UnknownStudentAuthFailure _value,
      $Res Function(_UnknownStudentAuthFailure) _then)
      : super(_value, (v) => _then(v as _UnknownStudentAuthFailure));

  @override
  _UnknownStudentAuthFailure get _value =>
      super._value as _UnknownStudentAuthFailure;

  @override
  $Res call({
    Object message = freezed,
    Object code = freezed,
  }) {
    return _then(_UnknownStudentAuthFailure(
      message: message == freezed ? _value.message : message as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
class _$_UnknownStudentAuthFailure extends _UnknownStudentAuthFailure {
  _$_UnknownStudentAuthFailure({@required this.message, this.code})
      : assert(message != null),
        super._();

  @override
  final String message;
  @override
  final String code;

  @override
  String toString() {
    return 'StudentAuthFailure.unknown(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownStudentAuthFailure &&
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
  _$UnknownStudentAuthFailureCopyWith<_UnknownStudentAuthFailure>
      get copyWith =>
          __$UnknownStudentAuthFailureCopyWithImpl<_UnknownStudentAuthFailure>(
              this, _$identity);

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
    Result $default(_StudentAuthFailure value), {
    @required Result unknown(_UnknownStudentAuthFailure value),
  }) {
    assert($default != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_StudentAuthFailure value), {
    Result unknown(_UnknownStudentAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownStudentAuthFailure extends StudentAuthFailure {
  _UnknownStudentAuthFailure._() : super._();
  factory _UnknownStudentAuthFailure({@required String message, String code}) =
      _$_UnknownStudentAuthFailure;

  @override
  String get message;
  String get code;
  @override
  _$UnknownStudentAuthFailureCopyWith<_UnknownStudentAuthFailure> get copyWith;
}
