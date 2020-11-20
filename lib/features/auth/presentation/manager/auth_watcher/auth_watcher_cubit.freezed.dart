// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthWatcherStateTearOff {
  const _$AuthWatcherStateTearOff();

// ignore: unused_element
  _AuthWatcherState call(
      {bool isLoading = false,
      @nullable User user,
      bool isAuthenticated = false,
      bool idTokenChanged = false}) {
    return _AuthWatcherState(
      isLoading: isLoading,
      user: user,
      isAuthenticated: isAuthenticated,
      idTokenChanged: idTokenChanged,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthWatcherState = _$AuthWatcherStateTearOff();

/// @nodoc
mixin _$AuthWatcherState {
  bool get isLoading;
  @nullable
  User get user;
  bool get isAuthenticated;
  bool get idTokenChanged;

  $AuthWatcherStateCopyWith<AuthWatcherState> get copyWith;
}

/// @nodoc
abstract class $AuthWatcherStateCopyWith<$Res> {
  factory $AuthWatcherStateCopyWith(
          AuthWatcherState value, $Res Function(AuthWatcherState) then) =
      _$AuthWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      @nullable User user,
      bool isAuthenticated,
      bool idTokenChanged});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthWatcherStateCopyWithImpl<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  _$AuthWatcherStateCopyWithImpl(this._value, this._then);

  final AuthWatcherState _value;
  // ignore: unused_field
  final $Res Function(AuthWatcherState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object user = freezed,
    Object isAuthenticated = freezed,
    Object idTokenChanged = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      user: user == freezed ? _value.user : user as User,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      idTokenChanged: idTokenChanged == freezed
          ? _value.idTokenChanged
          : idTokenChanged as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthWatcherStateCopyWith<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  factory _$AuthWatcherStateCopyWith(
          _AuthWatcherState value, $Res Function(_AuthWatcherState) then) =
      __$AuthWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      @nullable User user,
      bool isAuthenticated,
      bool idTokenChanged});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthWatcherStateCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res>
    implements _$AuthWatcherStateCopyWith<$Res> {
  __$AuthWatcherStateCopyWithImpl(
      _AuthWatcherState _value, $Res Function(_AuthWatcherState) _then)
      : super(_value, (v) => _then(v as _AuthWatcherState));

  @override
  _AuthWatcherState get _value => super._value as _AuthWatcherState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object user = freezed,
    Object isAuthenticated = freezed,
    Object idTokenChanged = freezed,
  }) {
    return _then(_AuthWatcherState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      user: user == freezed ? _value.user : user as User,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      idTokenChanged: idTokenChanged == freezed
          ? _value.idTokenChanged
          : idTokenChanged as bool,
    ));
  }
}

/// @nodoc
class _$_AuthWatcherState extends _AuthWatcherState
    with DiagnosticableTreeMixin {
  const _$_AuthWatcherState(
      {this.isLoading = false,
      @nullable this.user,
      this.isAuthenticated = false,
      this.idTokenChanged = false})
      : assert(isLoading != null),
        assert(isAuthenticated != null),
        assert(idTokenChanged != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final User user;
  @JsonKey(defaultValue: false)
  @override
  final bool isAuthenticated;
  @JsonKey(defaultValue: false)
  @override
  final bool idTokenChanged;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthWatcherState(isLoading: $isLoading, user: $user, isAuthenticated: $isAuthenticated, idTokenChanged: $idTokenChanged)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthWatcherState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('isAuthenticated', isAuthenticated))
      ..add(DiagnosticsProperty('idTokenChanged', idTokenChanged));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthWatcherState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.idTokenChanged, idTokenChanged) ||
                const DeepCollectionEquality()
                    .equals(other.idTokenChanged, idTokenChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(idTokenChanged);

  @override
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith =>
      __$AuthWatcherStateCopyWithImpl<_AuthWatcherState>(this, _$identity);
}

abstract class _AuthWatcherState extends AuthWatcherState {
  const _AuthWatcherState._() : super._();
  const factory _AuthWatcherState(
      {bool isLoading,
      @nullable User user,
      bool isAuthenticated,
      bool idTokenChanged}) = _$_AuthWatcherState;

  @override
  bool get isLoading;
  @override
  @nullable
  User get user;
  @override
  bool get isAuthenticated;
  @override
  bool get idTokenChanged;
  @override
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith;
}
