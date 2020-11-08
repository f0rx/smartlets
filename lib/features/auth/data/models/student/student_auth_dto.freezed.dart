// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StudentAuthDTO _$StudentAuthDTOFromJson(Map<String, dynamic> json) {
  return _StudentAuthDTO.fromJson(json);
}

/// @nodoc
class _$StudentAuthDTOTearOff {
  const _$StudentAuthDTOTearOff();

// ignore: unused_element
  _StudentAuthDTO call(
      {@JsonKey(ignore: true) String id,
      @required String displayName,
      @required String email,
      @required @nullable String guardianEmail,
      @required String gender,
      @required List<String> courseIds,
      @required List<String> projectIds,
      @required List<String> awardIds,
      @required bool isEmailVerified,
      @required @nullable String phone,
      @required @CountrySerializer() Country country,
      @required @nullable String guardianPhone,
      @required @nullable String photoURL,
      @nullable @ServerTimestampConverter() Timestamp createdAt,
      @nullable @ServerTimestampConverter() Timestamp lastSeenAt,
      @nullable @ServerTimestampConverter() Timestamp updatedAt}) {
    return _StudentAuthDTO(
      id: id,
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
  StudentAuthDTO fromJson(Map<String, Object> json) {
    return StudentAuthDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StudentAuthDTO = _$StudentAuthDTOTearOff();

/// @nodoc
mixin _$StudentAuthDTO {
  @JsonKey(ignore: true)
  String get id;
  String get displayName;
  String get email;
  @nullable
  String get guardianEmail;
  String get gender;
  List<String> get courseIds;
  List<String> get projectIds;
  List<String> get awardIds;
  bool get isEmailVerified;
  @nullable
  String get phone;
  @CountrySerializer()
  Country get country;
  @nullable
  String get guardianPhone;
  @nullable
  String get photoURL;
  @nullable
  @ServerTimestampConverter()
  Timestamp get createdAt;
  @nullable
  @ServerTimestampConverter()
  Timestamp get lastSeenAt;
  @nullable
  @ServerTimestampConverter()
  Timestamp get updatedAt;

  Map<String, dynamic> toJson();
  $StudentAuthDTOCopyWith<StudentAuthDTO> get copyWith;
}

/// @nodoc
abstract class $StudentAuthDTOCopyWith<$Res> {
  factory $StudentAuthDTOCopyWith(
          StudentAuthDTO value, $Res Function(StudentAuthDTO) then) =
      _$StudentAuthDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String displayName,
      String email,
      @nullable String guardianEmail,
      String gender,
      List<String> courseIds,
      List<String> projectIds,
      List<String> awardIds,
      bool isEmailVerified,
      @nullable String phone,
      @CountrySerializer() Country country,
      @nullable String guardianPhone,
      @nullable String photoURL,
      @nullable @ServerTimestampConverter() Timestamp createdAt,
      @nullable @ServerTimestampConverter() Timestamp lastSeenAt,
      @nullable @ServerTimestampConverter() Timestamp updatedAt});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$StudentAuthDTOCopyWithImpl<$Res>
    implements $StudentAuthDTOCopyWith<$Res> {
  _$StudentAuthDTOCopyWithImpl(this._value, this._then);

  final StudentAuthDTO _value;
  // ignore: unused_field
  final $Res Function(StudentAuthDTO) _then;

  @override
  $Res call({
    Object id = freezed,
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
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as String,
      gender: gender == freezed ? _value.gender : gender as String,
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
abstract class _$StudentAuthDTOCopyWith<$Res>
    implements $StudentAuthDTOCopyWith<$Res> {
  factory _$StudentAuthDTOCopyWith(
          _StudentAuthDTO value, $Res Function(_StudentAuthDTO) then) =
      __$StudentAuthDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String displayName,
      String email,
      @nullable String guardianEmail,
      String gender,
      List<String> courseIds,
      List<String> projectIds,
      List<String> awardIds,
      bool isEmailVerified,
      @nullable String phone,
      @CountrySerializer() Country country,
      @nullable String guardianPhone,
      @nullable String photoURL,
      @nullable @ServerTimestampConverter() Timestamp createdAt,
      @nullable @ServerTimestampConverter() Timestamp lastSeenAt,
      @nullable @ServerTimestampConverter() Timestamp updatedAt});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$StudentAuthDTOCopyWithImpl<$Res>
    extends _$StudentAuthDTOCopyWithImpl<$Res>
    implements _$StudentAuthDTOCopyWith<$Res> {
  __$StudentAuthDTOCopyWithImpl(
      _StudentAuthDTO _value, $Res Function(_StudentAuthDTO) _then)
      : super(_value, (v) => _then(v as _StudentAuthDTO));

  @override
  _StudentAuthDTO get _value => super._value as _StudentAuthDTO;

  @override
  $Res call({
    Object id = freezed,
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
    return _then(_StudentAuthDTO(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as String,
      gender: gender == freezed ? _value.gender : gender as String,
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
class _$_StudentAuthDTO extends _StudentAuthDTO {
  const _$_StudentAuthDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.displayName,
      @required this.email,
      @required @nullable this.guardianEmail,
      @required this.gender,
      @required this.courseIds,
      @required this.projectIds,
      @required this.awardIds,
      @required this.isEmailVerified,
      @required @nullable this.phone,
      @required @CountrySerializer() this.country,
      @required @nullable this.guardianPhone,
      @required @nullable this.photoURL,
      @nullable @ServerTimestampConverter() this.createdAt,
      @nullable @ServerTimestampConverter() this.lastSeenAt,
      @nullable @ServerTimestampConverter() this.updatedAt})
      : assert(displayName != null),
        assert(email != null),
        assert(gender != null),
        assert(courseIds != null),
        assert(projectIds != null),
        assert(awardIds != null),
        assert(isEmailVerified != null),
        assert(country != null),
        super._();

  factory _$_StudentAuthDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StudentAuthDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String displayName;
  @override
  final String email;
  @override
  @nullable
  final String guardianEmail;
  @override
  final String gender;
  @override
  final List<String> courseIds;
  @override
  final List<String> projectIds;
  @override
  final List<String> awardIds;
  @override
  final bool isEmailVerified;
  @override
  @nullable
  final String phone;
  @override
  @CountrySerializer()
  final Country country;
  @override
  @nullable
  final String guardianPhone;
  @override
  @nullable
  final String photoURL;
  @override
  @nullable
  @ServerTimestampConverter()
  final Timestamp createdAt;
  @override
  @nullable
  @ServerTimestampConverter()
  final Timestamp lastSeenAt;
  @override
  @nullable
  @ServerTimestampConverter()
  final Timestamp updatedAt;

  @override
  String toString() {
    return 'StudentAuthDTO(id: $id, displayName: $displayName, email: $email, guardianEmail: $guardianEmail, gender: $gender, courseIds: $courseIds, projectIds: $projectIds, awardIds: $awardIds, isEmailVerified: $isEmailVerified, phone: $phone, country: $country, guardianPhone: $guardianPhone, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StudentAuthDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
  _$StudentAuthDTOCopyWith<_StudentAuthDTO> get copyWith =>
      __$StudentAuthDTOCopyWithImpl<_StudentAuthDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StudentAuthDTOToJson(this);
  }
}

abstract class _StudentAuthDTO extends StudentAuthDTO {
  const _StudentAuthDTO._() : super._();
  const factory _StudentAuthDTO(
          {@JsonKey(ignore: true) String id,
          @required String displayName,
          @required String email,
          @required @nullable String guardianEmail,
          @required String gender,
          @required List<String> courseIds,
          @required List<String> projectIds,
          @required List<String> awardIds,
          @required bool isEmailVerified,
          @required @nullable String phone,
          @required @CountrySerializer() Country country,
          @required @nullable String guardianPhone,
          @required @nullable String photoURL,
          @nullable @ServerTimestampConverter() Timestamp createdAt,
          @nullable @ServerTimestampConverter() Timestamp lastSeenAt,
          @nullable @ServerTimestampConverter() Timestamp updatedAt}) =
      _$_StudentAuthDTO;

  factory _StudentAuthDTO.fromJson(Map<String, dynamic> json) =
      _$_StudentAuthDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get displayName;
  @override
  String get email;
  @override
  @nullable
  String get guardianEmail;
  @override
  String get gender;
  @override
  List<String> get courseIds;
  @override
  List<String> get projectIds;
  @override
  List<String> get awardIds;
  @override
  bool get isEmailVerified;
  @override
  @nullable
  String get phone;
  @override
  @CountrySerializer()
  Country get country;
  @override
  @nullable
  String get guardianPhone;
  @override
  @nullable
  String get photoURL;
  @override
  @nullable
  @ServerTimestampConverter()
  Timestamp get createdAt;
  @override
  @nullable
  @ServerTimestampConverter()
  Timestamp get lastSeenAt;
  @override
  @nullable
  @ServerTimestampConverter()
  Timestamp get updatedAt;
  @override
  _$StudentAuthDTOCopyWith<_StudentAuthDTO> get copyWith;
}
