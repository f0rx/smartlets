// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'guardian_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GuardianDTO _$GuardianDTOFromJson(Map<String, dynamic> json) {
  return _GuardianDTO.fromJson(json);
}

/// @nodoc
class _$GuardianDTOTearOff {
  const _$GuardianDTOTearOff();

// ignore: unused_element
  _GuardianDTO call(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          String id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          Roles role = Roles.parent,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String displayName,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String email,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> childrenIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: false)
      @nullable
          bool isEmailVerified,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String phone,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @CountrySerializer()
          Country country,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String photoURL,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp createdAt,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp updatedAt}) {
    return _GuardianDTO(
      id: id,
      role: role,
      displayName: displayName,
      email: email,
      providers: providers,
      childrenIds: childrenIds,
      isEmailVerified: isEmailVerified,
      phone: phone,
      country: country,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  GuardianDTO fromJson(Map<String, Object> json) {
    return GuardianDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GuardianDTO = _$GuardianDTOTearOff();

/// @nodoc
mixin _$GuardianDTO {
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  @nullable
  String get id;
  @JsonKey(includeIfNull: false)
  @nullable
  @RoleSerializer()
  Roles get role;
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get displayName;
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get email;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: [])
  @AuthProviderSerializer()
  List<AuthProvider> get providers;
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get childrenIds;
  @JsonKey(includeIfNull: false, defaultValue: false)
  @nullable
  bool get isEmailVerified;
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get phone;
  @JsonKey(includeIfNull: false)
  @nullable
  @CountrySerializer()
  Country get country;
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get photoURL;
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  Timestamp get createdAt;
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  Timestamp get lastSeenAt;
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  Timestamp get updatedAt;

  Map<String, dynamic> toJson();
  $GuardianDTOCopyWith<GuardianDTO> get copyWith;
}

/// @nodoc
abstract class $GuardianDTOCopyWith<$Res> {
  factory $GuardianDTOCopyWith(
          GuardianDTO value, $Res Function(GuardianDTO) then) =
      _$GuardianDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          String id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          Roles role,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String displayName,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> childrenIds,
      @JsonKey(includeIfNull: false, defaultValue: false)
      @nullable
          bool isEmailVerified,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String phone,
      @JsonKey(includeIfNull: false)
      @nullable
      @CountrySerializer()
          Country country,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String photoURL,
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp createdAt,
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp updatedAt});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$GuardianDTOCopyWithImpl<$Res> implements $GuardianDTOCopyWith<$Res> {
  _$GuardianDTOCopyWithImpl(this._value, this._then);

  final GuardianDTO _value;
  // ignore: unused_field
  final $Res Function(GuardianDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object providers = freezed,
    Object childrenIds = freezed,
    Object isEmailVerified = freezed,
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
      providers: providers == freezed
          ? _value.providers
          : providers as List<AuthProvider>,
      childrenIds: childrenIds == freezed
          ? _value.childrenIds
          : childrenIds as List<String>,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
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
abstract class _$GuardianDTOCopyWith<$Res>
    implements $GuardianDTOCopyWith<$Res> {
  factory _$GuardianDTOCopyWith(
          _GuardianDTO value, $Res Function(_GuardianDTO) then) =
      __$GuardianDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          String id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          Roles role,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String displayName,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> childrenIds,
      @JsonKey(includeIfNull: false, defaultValue: false)
      @nullable
          bool isEmailVerified,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String phone,
      @JsonKey(includeIfNull: false)
      @nullable
      @CountrySerializer()
          Country country,
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String photoURL,
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp createdAt,
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp updatedAt});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$GuardianDTOCopyWithImpl<$Res> extends _$GuardianDTOCopyWithImpl<$Res>
    implements _$GuardianDTOCopyWith<$Res> {
  __$GuardianDTOCopyWithImpl(
      _GuardianDTO _value, $Res Function(_GuardianDTO) _then)
      : super(_value, (v) => _then(v as _GuardianDTO));

  @override
  _GuardianDTO get _value => super._value as _GuardianDTO;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object providers = freezed,
    Object childrenIds = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object country = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_GuardianDTO(
      id: id == freezed ? _value.id : id as String,
      role: role == freezed ? _value.role : role as Roles,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      providers: providers == freezed
          ? _value.providers
          : providers as List<AuthProvider>,
      childrenIds: childrenIds == freezed
          ? _value.childrenIds
          : childrenIds as List<String>,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
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
class _$_GuardianDTO extends _GuardianDTO {
  const _$_GuardianDTO(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          this.id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          this.role = Roles.parent,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.displayName,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.email,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          this.providers,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          this.childrenIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: false)
      @nullable
          this.isEmailVerified,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.phone,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @CountrySerializer()
          this.country,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.photoURL,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          this.createdAt,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          this.lastSeenAt,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          this.updatedAt})
      : super._();

  factory _$_GuardianDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_GuardianDTOFromJson(json);

  @override
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  @nullable
  final String id;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @RoleSerializer()
  final Roles role;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  final String displayName;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  final String email;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: [])
  @AuthProviderSerializer()
  final List<AuthProvider> providers;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  final List<String> childrenIds;
  @override
  @JsonKey(includeIfNull: false, defaultValue: false)
  @nullable
  final bool isEmailVerified;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  final String phone;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @CountrySerializer()
  final Country country;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  final String photoURL;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  final Timestamp createdAt;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  final Timestamp lastSeenAt;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  final Timestamp updatedAt;

  @override
  String toString() {
    return 'GuardianDTO(id: $id, role: $role, displayName: $displayName, email: $email, providers: $providers, childrenIds: $childrenIds, isEmailVerified: $isEmailVerified, phone: $phone, country: $country, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuardianDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.providers, providers) ||
                const DeepCollectionEquality()
                    .equals(other.providers, providers)) &&
            (identical(other.childrenIds, childrenIds) ||
                const DeepCollectionEquality()
                    .equals(other.childrenIds, childrenIds)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
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
      const DeepCollectionEquality().hash(providers) ^
      const DeepCollectionEquality().hash(childrenIds) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$GuardianDTOCopyWith<_GuardianDTO> get copyWith =>
      __$GuardianDTOCopyWithImpl<_GuardianDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GuardianDTOToJson(this);
  }
}

abstract class _GuardianDTO extends GuardianDTO {
  const _GuardianDTO._() : super._();
  const factory _GuardianDTO(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          String id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          Roles role,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String displayName,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String email,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: [])
      @AuthProviderSerializer()
          List<AuthProvider> providers,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> childrenIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: false)
      @nullable
          bool isEmailVerified,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String phone,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @CountrySerializer()
          Country country,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String photoURL,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp createdAt,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp lastSeenAt,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @ServerTimestampConverter()
          Timestamp updatedAt}) = _$_GuardianDTO;

  factory _GuardianDTO.fromJson(Map<String, dynamic> json) =
      _$_GuardianDTO.fromJson;

  @override
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  @nullable
  String get id;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @RoleSerializer()
  Roles get role;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get displayName;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get email;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: [])
  @AuthProviderSerializer()
  List<AuthProvider> get providers;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get childrenIds;
  @override
  @JsonKey(includeIfNull: false, defaultValue: false)
  @nullable
  bool get isEmailVerified;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get phone;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @CountrySerializer()
  Country get country;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get photoURL;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  Timestamp get createdAt;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  Timestamp get lastSeenAt;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @ServerTimestampConverter()
  Timestamp get updatedAt;
  @override
  _$GuardianDTOCopyWith<_GuardianDTO> get copyWith;
}
