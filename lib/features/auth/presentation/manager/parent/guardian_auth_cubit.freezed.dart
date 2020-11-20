// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'guardian_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GuardianAuthStateTearOff {
  const _$GuardianAuthStateTearOff();

// ignore: unused_element
  _GuardianAuthState call(
      {@nullable Guardian guardian,
      KtList<Guardian> parents = const KtList.empty(),
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading = false}) {
    return _GuardianAuthState(
      guardian: guardian,
      parents: parents,
      status: status,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GuardianAuthState = _$GuardianAuthStateTearOff();

/// @nodoc
mixin _$GuardianAuthState {
  @nullable
  Guardian get guardian;
  KtList<Guardian> get parents;
  @nullable
  Either<FirestoreAuthFailure, Unit> get status;
  bool get isLoading;

  $GuardianAuthStateCopyWith<GuardianAuthState> get copyWith;
}

/// @nodoc
abstract class $GuardianAuthStateCopyWith<$Res> {
  factory $GuardianAuthStateCopyWith(
          GuardianAuthState value, $Res Function(GuardianAuthState) then) =
      _$GuardianAuthStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable Guardian guardian,
      KtList<Guardian> parents,
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading});

  $GuardianCopyWith<$Res> get guardian;
}

/// @nodoc
class _$GuardianAuthStateCopyWithImpl<$Res>
    implements $GuardianAuthStateCopyWith<$Res> {
  _$GuardianAuthStateCopyWithImpl(this._value, this._then);

  final GuardianAuthState _value;
  // ignore: unused_field
  final $Res Function(GuardianAuthState) _then;

  @override
  $Res call({
    Object guardian = freezed,
    Object parents = freezed,
    Object status = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      guardian: guardian == freezed ? _value.guardian : guardian as Guardian,
      parents:
          parents == freezed ? _value.parents : parents as KtList<Guardian>,
      status: status == freezed
          ? _value.status
          : status as Either<FirestoreAuthFailure, Unit>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }

  @override
  $GuardianCopyWith<$Res> get guardian {
    if (_value.guardian == null) {
      return null;
    }
    return $GuardianCopyWith<$Res>(_value.guardian, (value) {
      return _then(_value.copyWith(guardian: value));
    });
  }
}

/// @nodoc
abstract class _$GuardianAuthStateCopyWith<$Res>
    implements $GuardianAuthStateCopyWith<$Res> {
  factory _$GuardianAuthStateCopyWith(
          _GuardianAuthState value, $Res Function(_GuardianAuthState) then) =
      __$GuardianAuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Guardian guardian,
      KtList<Guardian> parents,
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading});

  @override
  $GuardianCopyWith<$Res> get guardian;
}

/// @nodoc
class __$GuardianAuthStateCopyWithImpl<$Res>
    extends _$GuardianAuthStateCopyWithImpl<$Res>
    implements _$GuardianAuthStateCopyWith<$Res> {
  __$GuardianAuthStateCopyWithImpl(
      _GuardianAuthState _value, $Res Function(_GuardianAuthState) _then)
      : super(_value, (v) => _then(v as _GuardianAuthState));

  @override
  _GuardianAuthState get _value => super._value as _GuardianAuthState;

  @override
  $Res call({
    Object guardian = freezed,
    Object parents = freezed,
    Object status = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_GuardianAuthState(
      guardian: guardian == freezed ? _value.guardian : guardian as Guardian,
      parents:
          parents == freezed ? _value.parents : parents as KtList<Guardian>,
      status: status == freezed
          ? _value.status
          : status as Either<FirestoreAuthFailure, Unit>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_GuardianAuthState extends _GuardianAuthState {
  const _$_GuardianAuthState(
      {@nullable this.guardian,
      this.parents = const KtList.empty(),
      @nullable this.status,
      this.isLoading = false})
      : assert(parents != null),
        assert(isLoading != null),
        super._();

  @override
  @nullable
  final Guardian guardian;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Guardian> parents;
  @override
  @nullable
  final Either<FirestoreAuthFailure, Unit> status;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'GuardianAuthState(guardian: $guardian, parents: $parents, status: $status, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuardianAuthState &&
            (identical(other.guardian, guardian) ||
                const DeepCollectionEquality()
                    .equals(other.guardian, guardian)) &&
            (identical(other.parents, parents) ||
                const DeepCollectionEquality()
                    .equals(other.parents, parents)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(guardian) ^
      const DeepCollectionEquality().hash(parents) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$GuardianAuthStateCopyWith<_GuardianAuthState> get copyWith =>
      __$GuardianAuthStateCopyWithImpl<_GuardianAuthState>(this, _$identity);
}

abstract class _GuardianAuthState extends GuardianAuthState {
  const _GuardianAuthState._() : super._();
  const factory _GuardianAuthState(
      {@nullable Guardian guardian,
      KtList<Guardian> parents,
      @nullable Either<FirestoreAuthFailure, Unit> status,
      bool isLoading}) = _$_GuardianAuthState;

  @override
  @nullable
  Guardian get guardian;
  @override
  KtList<Guardian> get parents;
  @override
  @nullable
  Either<FirestoreAuthFailure, Unit> get status;
  @override
  bool get isLoading;
  @override
  _$GuardianAuthStateCopyWith<_GuardianAuthState> get copyWith;
}
