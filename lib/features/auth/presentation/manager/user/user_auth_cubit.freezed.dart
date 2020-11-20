// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of user_auth_cubit;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserAuthStateTearOff {
  const _$UserAuthStateTearOff();

// ignore: unused_element
  _UserAuthState call(
      {@nullable User user,
      KtList<User> users = const KtList.empty(),
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading = false}) {
    return _UserAuthState(
      user: user,
      users: users,
      status: status,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserAuthState = _$UserAuthStateTearOff();

/// @nodoc
mixin _$UserAuthState {
  @nullable
  User get user;
  KtList<User> get users;
  @nullable
  Either<FirestoreAuthFailure, Unit> get status;
  bool get isLoading;

  $UserAuthStateCopyWith<UserAuthState> get copyWith;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable User user,
      KtList<User> users,
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  final UserAuthState _value;
  // ignore: unused_field
  final $Res Function(UserAuthState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object users = freezed,
    Object status = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      users: users == freezed ? _value.users : users as KtList<User>,
      status: status == freezed
          ? _value.status
          : status as Either<FirestoreAuthFailure, Unit>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
abstract class _$UserAuthStateCopyWith<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  factory _$UserAuthStateCopyWith(
          _UserAuthState value, $Res Function(_UserAuthState) then) =
      __$UserAuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable User user,
      KtList<User> users,
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserAuthStateCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res>
    implements _$UserAuthStateCopyWith<$Res> {
  __$UserAuthStateCopyWithImpl(
      _UserAuthState _value, $Res Function(_UserAuthState) _then)
      : super(_value, (v) => _then(v as _UserAuthState));

  @override
  _UserAuthState get _value => super._value as _UserAuthState;

  @override
  $Res call({
    Object user = freezed,
    Object users = freezed,
    Object status = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_UserAuthState(
      user: user == freezed ? _value.user : user as User,
      users: users == freezed ? _value.users : users as KtList<User>,
      status: status == freezed
          ? _value.status
          : status as Either<FirestoreAuthFailure, Unit>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_UserAuthState extends _UserAuthState {
  const _$_UserAuthState(
      {@nullable this.user,
      this.users = const KtList.empty(),
      @nullable this.status,
      this.isLoading = false})
      : assert(users != null),
        assert(isLoading != null),
        super._();

  @override
  @nullable
  final User user;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<User> users;
  @override
  @nullable
  final Either<FirestoreAuthFailure, Unit> status;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserAuthState(user: $user, users: $users, status: $status, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAuthState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$UserAuthStateCopyWith<_UserAuthState> get copyWith =>
      __$UserAuthStateCopyWithImpl<_UserAuthState>(this, _$identity);
}

abstract class _UserAuthState extends UserAuthState {
  const _UserAuthState._() : super._();
  const factory _UserAuthState(
      {@nullable User user,
      KtList<User> users,
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading}) = _$_UserAuthState;

  @override
  @nullable
  User get user;
  @override
  KtList<User> get users;
  @override
  @nullable
  Either<FirestoreAuthFailure, Unit> get status;
  @override
  bool get isLoading;
  @override
  _$UserAuthStateCopyWith<_UserAuthState> get copyWith;
}
