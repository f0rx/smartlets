// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

// ignore: unused_element
  _UserDTO call(
      {@nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @RoleSerializer()
          Roles role,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String displayName,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool isEmailVerified,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @required
      @nullable
      @JsonKey(includeIfNull: false)
      @CountrySerializer()
          Country country,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @required
      @nullable
      @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
      @ServerTimestampConverter()
          Timestamp createdAt,
      @required
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp updatedAt}) {
    return _UserDTO(
      id: id,
      role: role,
      displayName: displayName,
      email: email,
      isEmailVerified: isEmailVerified,
      providers: providers,
      phone: phone,
      country: country,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  String get id;
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  @RoleSerializer()
  Roles get role;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get displayName;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  bool get isEmailVerified;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: [])
  @AuthProviderSerializer()
  List<AuthProvider> get providers;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @nullable
  @JsonKey(includeIfNull: false)
  @CountrySerializer()
  Country get country;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photoURL;
  @nullable
  @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
  @ServerTimestampConverter()
  Timestamp get createdAt;
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  Timestamp get lastSeenAt;
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  Timestamp get updatedAt;

  Map<String, dynamic> toJson();
  $UserDTOCopyWith<UserDTO> get copyWith;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @RoleSerializer()
          Roles role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String displayName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @nullable
      @JsonKey(includeIfNull: false)
      @CountrySerializer()
          Country country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @nullable
      @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
      @ServerTimestampConverter()
          Timestamp createdAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp updatedAt});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object isEmailVerified = freezed,
    Object providers = freezed,
    Object phone = freezed,
    Object country = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      role: role == freezed ? _value.role : role as Roles,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      providers: providers == freezed
          ? _value.providers
          : providers as List<AuthProvider>,
      phone: phone == freezed ? _value.phone : phone as String,
      country: country == freezed ? _value.country : country as Country,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as Timestamp,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as Timestamp,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as Timestamp,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    if (_value.country == null) {
      return null;
    }
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @RoleSerializer()
          Roles role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String displayName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @nullable
      @JsonKey(includeIfNull: false)
      @CountrySerializer()
          Country country,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @nullable
      @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
      @ServerTimestampConverter()
          Timestamp createdAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp updatedAt});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object isEmailVerified = freezed,
    Object providers = freezed,
    Object phone = freezed,
    Object country = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed ? _value.id : id as String,
      role: role == freezed ? _value.role : role as Roles,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      providers: providers == freezed
          ? _value.providers
          : providers as List<AuthProvider>,
      phone: phone == freezed ? _value.phone : phone as String,
      country: country == freezed ? _value.country : country as Country,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as Timestamp,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as Timestamp,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as Timestamp,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          this.id,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @RoleSerializer()
          this.role,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.displayName,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.email,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          this.isEmailVerified,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          this.providers,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.phone,
      @required
      @nullable
      @JsonKey(includeIfNull: false)
      @CountrySerializer()
          this.country,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.photoURL,
      @required
      @nullable
      @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
      @ServerTimestampConverter()
          this.createdAt,
      @required
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          this.lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          this.updatedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  final String id;
  @override
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  @RoleSerializer()
  final Roles role;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String displayName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String email;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  final bool isEmailVerified;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: [])
  @AuthProviderSerializer()
  final List<AuthProvider> providers;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String phone;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @CountrySerializer()
  final Country country;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String photoURL;
  @override
  @nullable
  @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
  @ServerTimestampConverter()
  final Timestamp createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  final Timestamp lastSeenAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  final Timestamp updatedAt;

  @override
  String toString() {
    return 'UserDTO(id: $id, role: $role, displayName: $displayName, email: $email, isEmailVerified: $isEmailVerified, providers: $providers, phone: $phone, country: $country, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.providers, providers) ||
                const DeepCollectionEquality()
                    .equals(other.providers, providers)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(providers) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const _UserDTO._() : super._();
  const factory _UserDTO(
      {@nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @RoleSerializer()
          Roles role,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String displayName,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool isEmailVerified,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @required
      @nullable
      @JsonKey(includeIfNull: false)
      @CountrySerializer()
          Country country,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @required
      @nullable
      @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
      @ServerTimestampConverter()
          Timestamp createdAt,
      @required
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerTimestampConverter()
          Timestamp updatedAt}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  String get id;
  @override
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  @RoleSerializer()
  Roles get role;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get displayName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  bool get isEmailVerified;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: [])
  @AuthProviderSerializer()
  List<AuthProvider> get providers;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @CountrySerializer()
  Country get country;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photoURL;
  @override
  @nullable
  @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
  @ServerTimestampConverter()
  Timestamp get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  Timestamp get lastSeenAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerTimestampConverter()
  Timestamp get updatedAt;
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith;
}
