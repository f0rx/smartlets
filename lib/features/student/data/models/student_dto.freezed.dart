// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StudentDTO _$StudentDTOFromJson(Map<String, dynamic> json) {
  return _StudentDTO.fromJson(json);
}

/// @nodoc
class _$StudentDTOTearOff {
  const _$StudentDTOTearOff();

// ignore: unused_element
  _StudentDTO call(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          String id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          Roles role = Roles.student,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String displayName,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String email,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String guardianEmail,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @GenderTypeSerializer()
          GenderType gender,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> courseIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> projectIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> awardIds,
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
          String guardianPhone,
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
    return _StudentDTO(
      id: id,
      role: role,
      displayName: displayName,
      email: email,
      guardianEmail: guardianEmail,
      gender: gender,
      courseIds: courseIds,
      projectIds: projectIds,
      awardIds: awardIds,
      isEmailVerified: isEmailVerified,
      phone: phone,
      country: country,
      guardianPhone: guardianPhone,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  StudentDTO fromJson(Map<String, Object> json) {
    return StudentDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StudentDTO = _$StudentDTOTearOff();

/// @nodoc
mixin _$StudentDTO {
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
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get guardianEmail;
  @JsonKey(includeIfNull: false)
  @nullable
  @GenderTypeSerializer()
  GenderType get gender;
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get courseIds;
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get projectIds;
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get awardIds;
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
  String get guardianPhone;
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
  $StudentDTOCopyWith<StudentDTO> get copyWith;
}

/// @nodoc
abstract class $StudentDTOCopyWith<$Res> {
  factory $StudentDTOCopyWith(
          StudentDTO value, $Res Function(StudentDTO) then) =
      _$StudentDTOCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String guardianEmail,
      @JsonKey(includeIfNull: false)
      @nullable
      @GenderTypeSerializer()
          GenderType gender,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> courseIds,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> projectIds,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> awardIds,
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
          String guardianPhone,
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
class _$StudentDTOCopyWithImpl<$Res> implements $StudentDTOCopyWith<$Res> {
  _$StudentDTOCopyWithImpl(this._value, this._then);

  final StudentDTO _value;
  // ignore: unused_field
  final $Res Function(StudentDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object guardianEmail = freezed,
    Object gender = freezed,
    Object courseIds = freezed,
    Object projectIds = freezed,
    Object awardIds = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object country = freezed,
    Object guardianPhone = freezed,
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
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as String,
      gender: gender == freezed ? _value.gender : gender as GenderType,
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as List<String>,
      projectIds: projectIds == freezed
          ? _value.projectIds
          : projectIds as List<String>,
      awardIds:
          awardIds == freezed ? _value.awardIds : awardIds as List<String>,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as String,
      country: country == freezed ? _value.country : country as Country,
      guardianPhone: guardianPhone == freezed
          ? _value.guardianPhone
          : guardianPhone as String,
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
abstract class _$StudentDTOCopyWith<$Res> implements $StudentDTOCopyWith<$Res> {
  factory _$StudentDTOCopyWith(
          _StudentDTO value, $Res Function(_StudentDTO) then) =
      __$StudentDTOCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String guardianEmail,
      @JsonKey(includeIfNull: false)
      @nullable
      @GenderTypeSerializer()
          GenderType gender,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> courseIds,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> projectIds,
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> awardIds,
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
          String guardianPhone,
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
class __$StudentDTOCopyWithImpl<$Res> extends _$StudentDTOCopyWithImpl<$Res>
    implements _$StudentDTOCopyWith<$Res> {
  __$StudentDTOCopyWithImpl(
      _StudentDTO _value, $Res Function(_StudentDTO) _then)
      : super(_value, (v) => _then(v as _StudentDTO));

  @override
  _StudentDTO get _value => super._value as _StudentDTO;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object guardianEmail = freezed,
    Object gender = freezed,
    Object courseIds = freezed,
    Object projectIds = freezed,
    Object awardIds = freezed,
    Object isEmailVerified = freezed,
    Object phone = freezed,
    Object country = freezed,
    Object guardianPhone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_StudentDTO(
      id: id == freezed ? _value.id : id as String,
      role: role == freezed ? _value.role : role as Roles,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as String,
      gender: gender == freezed ? _value.gender : gender as GenderType,
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as List<String>,
      projectIds: projectIds == freezed
          ? _value.projectIds
          : projectIds as List<String>,
      awardIds:
          awardIds == freezed ? _value.awardIds : awardIds as List<String>,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as String,
      country: country == freezed ? _value.country : country as Country,
      guardianPhone: guardianPhone == freezed
          ? _value.guardianPhone
          : guardianPhone as String,
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
class _$_StudentDTO extends _StudentDTO {
  const _$_StudentDTO(
      {@JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
      @nullable
          this.id,
      @JsonKey(includeIfNull: false)
      @nullable
      @RoleSerializer()
          this.role = Roles.student,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.displayName,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.email,
      @required
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          this.guardianEmail,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @GenderTypeSerializer()
          this.gender,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          this.courseIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          this.projectIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          this.awardIds,
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
          this.guardianPhone,
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

  factory _$_StudentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StudentDTOFromJson(json);

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
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  final String guardianEmail;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @GenderTypeSerializer()
  final GenderType gender;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  final List<String> courseIds;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  final List<String> projectIds;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  final List<String> awardIds;
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
  final String guardianPhone;
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
    return 'StudentDTO(id: $id, role: $role, displayName: $displayName, email: $email, guardianEmail: $guardianEmail, gender: $gender, courseIds: $courseIds, projectIds: $projectIds, awardIds: $awardIds, isEmailVerified: $isEmailVerified, phone: $phone, country: $country, guardianPhone: $guardianPhone, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StudentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.guardianEmail, guardianEmail) ||
                const DeepCollectionEquality()
                    .equals(other.guardianEmail, guardianEmail)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.courseIds, courseIds) ||
                const DeepCollectionEquality()
                    .equals(other.courseIds, courseIds)) &&
            (identical(other.projectIds, projectIds) ||
                const DeepCollectionEquality()
                    .equals(other.projectIds, projectIds)) &&
            (identical(other.awardIds, awardIds) ||
                const DeepCollectionEquality()
                    .equals(other.awardIds, awardIds)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.guardianPhone, guardianPhone) ||
                const DeepCollectionEquality()
                    .equals(other.guardianPhone, guardianPhone)) &&
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
      const DeepCollectionEquality().hash(guardianEmail) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(courseIds) ^
      const DeepCollectionEquality().hash(projectIds) ^
      const DeepCollectionEquality().hash(awardIds) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(guardianPhone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$StudentDTOCopyWith<_StudentDTO> get copyWith =>
      __$StudentDTOCopyWithImpl<_StudentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StudentDTOToJson(this);
  }
}

abstract class _StudentDTO extends StudentDTO {
  const _StudentDTO._() : super._();
  const factory _StudentDTO(
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
      @JsonKey(includeIfNull: false, defaultValue: '')
      @nullable
          String guardianEmail,
      @required
      @JsonKey(includeIfNull: false)
      @nullable
      @GenderTypeSerializer()
          GenderType gender,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> courseIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> projectIds,
      @required
      @JsonKey(includeIfNull: false, defaultValue: [])
      @nullable
          List<String> awardIds,
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
          String guardianPhone,
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
          Timestamp updatedAt}) = _$_StudentDTO;

  factory _StudentDTO.fromJson(Map<String, dynamic> json) =
      _$_StudentDTO.fromJson;

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
  @JsonKey(includeIfNull: false, defaultValue: '')
  @nullable
  String get guardianEmail;
  @override
  @JsonKey(includeIfNull: false)
  @nullable
  @GenderTypeSerializer()
  GenderType get gender;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get courseIds;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get projectIds;
  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  @nullable
  List<String> get awardIds;
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
  String get guardianPhone;
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
  _$StudentDTOCopyWith<_StudentDTO> get copyWith;
}
