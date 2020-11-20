// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_provider_dto;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthProviderDTO _$AuthProviderDTOFromJson(Map<String, dynamic> json) {
  return _AuthProviderDTO.fromJson(json);
}

/// @nodoc
class _$AuthProviderDTOTearOff {
  const _$AuthProviderDTOTearOff();

// ignore: unused_element
  _AuthProviderDTO call(
      {@required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String id,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phoneNumber,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String providerId}) {
    return _AuthProviderDTO(
      id: id,
      displayName: displayName,
      email: email,
      phoneNumber: phoneNumber,
      photoURL: photoURL,
      providerId: providerId,
    );
  }

// ignore: unused_element
  AuthProviderDTO fromJson(Map<String, Object> json) {
    return AuthProviderDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthProviderDTO = _$AuthProviderDTOTearOff();

/// @nodoc
mixin _$AuthProviderDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get displayName;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phoneNumber;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photoURL;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get providerId;

  Map<String, dynamic> toJson();
  $AuthProviderDTOCopyWith<AuthProviderDTO> get copyWith;
}

/// @nodoc
abstract class $AuthProviderDTOCopyWith<$Res> {
  factory $AuthProviderDTOCopyWith(
          AuthProviderDTO value, $Res Function(AuthProviderDTO) then) =
      _$AuthProviderDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String displayName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phoneNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String providerId});
}

/// @nodoc
class _$AuthProviderDTOCopyWithImpl<$Res>
    implements $AuthProviderDTOCopyWith<$Res> {
  _$AuthProviderDTOCopyWithImpl(this._value, this._then);

  final AuthProviderDTO _value;
  // ignore: unused_field
  final $Res Function(AuthProviderDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object photoURL = freezed,
    Object providerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthProviderDTOCopyWith<$Res>
    implements $AuthProviderDTOCopyWith<$Res> {
  factory _$AuthProviderDTOCopyWith(
          _AuthProviderDTO value, $Res Function(_AuthProviderDTO) then) =
      __$AuthProviderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String displayName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phoneNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String providerId});
}

/// @nodoc
class __$AuthProviderDTOCopyWithImpl<$Res>
    extends _$AuthProviderDTOCopyWithImpl<$Res>
    implements _$AuthProviderDTOCopyWith<$Res> {
  __$AuthProviderDTOCopyWithImpl(
      _AuthProviderDTO _value, $Res Function(_AuthProviderDTO) _then)
      : super(_value, (v) => _then(v as _AuthProviderDTO));

  @override
  _AuthProviderDTO get _value => super._value as _AuthProviderDTO;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object photoURL = freezed,
    Object providerId = freezed,
  }) {
    return _then(_AuthProviderDTO(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthProviderDTO extends _AuthProviderDTO {
  const _$_AuthProviderDTO(
      {@required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.id,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.phoneNumber,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.photoURL,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.providerId})
      : super._();

  factory _$_AuthProviderDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthProviderDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String id;
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
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String phoneNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String photoURL;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String providerId;

  @override
  String toString() {
    return 'AuthProviderDTO(id: $id, displayName: $displayName, email: $email, phoneNumber: $phoneNumber, photoURL: $photoURL, providerId: $providerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthProviderDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(providerId);

  @override
  _$AuthProviderDTOCopyWith<_AuthProviderDTO> get copyWith =>
      __$AuthProviderDTOCopyWithImpl<_AuthProviderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthProviderDTOToJson(this);
  }
}

abstract class _AuthProviderDTO extends AuthProviderDTO {
  const _AuthProviderDTO._() : super._();
  const factory _AuthProviderDTO(
      {@required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String id,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phoneNumber,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photoURL,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String providerId}) = _$_AuthProviderDTO;

  factory _AuthProviderDTO.fromJson(Map<String, dynamic> json) =
      _$_AuthProviderDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get id;
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
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phoneNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photoURL;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get providerId;
  @override
  _$AuthProviderDTOCopyWith<_AuthProviderDTO> get copyWith;
}
