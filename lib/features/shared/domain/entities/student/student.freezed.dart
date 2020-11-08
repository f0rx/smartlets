// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StudentTearOff {
  const _$StudentTearOff();

// ignore: unused_element
  _Student call(
      {@nullable UniqueId id,
      @required DisplayName displayName,
      @required EmailAddress email,
      EmailAddress guardianEmail = EmailAddress.DEFAULT,
      @nullable Gender gender,
      ImmutableIds courseIds = ImmutableIds.EMPTY,
      ImmutableIds projectIds = ImmutableIds.EMPTY,
      ImmutableIds awardIds = ImmutableIds.EMPTY,
      bool isEmailVerified = false,
      Phone phone = Phone.DEFAULT,
      Phone guardianPhone = Phone.DEFAULT,
      String photoURL = '',
      @nullable @nullable DateTime createdAt,
      @nullable @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt}) {
    return _Student(
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
      guardianPhone: guardianPhone,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Student = _$StudentTearOff();

/// @nodoc
mixin _$Student {
  @nullable
  UniqueId get id;
  DisplayName get displayName;
  EmailAddress get email;
  EmailAddress get guardianEmail;
  @nullable
  Gender get gender;
  ImmutableIds get courseIds;
  ImmutableIds get projectIds;
  ImmutableIds get awardIds;
  bool get isEmailVerified;
  Phone get phone;
  Phone get guardianPhone;
  String get photoURL;
  @nullable
  @nullable
  DateTime get createdAt;
  @nullable
  @nullable
  DateTime get lastSeenAt;
  @nullable
  DateTime get updatedAt;

  $StudentCopyWith<Student> get copyWith;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId id,
      DisplayName displayName,
      EmailAddress email,
      EmailAddress guardianEmail,
      @nullable Gender gender,
      ImmutableIds courseIds,
      ImmutableIds projectIds,
      ImmutableIds awardIds,
      bool isEmailVerified,
      Phone phone,
      Phone guardianPhone,
      String photoURL,
      @nullable @nullable DateTime createdAt,
      @nullable @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res> implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  final Student _value;
  // ignore: unused_field
  final $Res Function(Student) _then;

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
    Object guardianPhone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as ImmutableIds,
      projectIds: projectIds == freezed
          ? _value.projectIds
          : projectIds as ImmutableIds,
      awardIds:
          awardIds == freezed ? _value.awardIds : awardIds as ImmutableIds,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as Phone,
      guardianPhone: guardianPhone == freezed
          ? _value.guardianPhone
          : guardianPhone as Phone,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) then) =
      __$StudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId id,
      DisplayName displayName,
      EmailAddress email,
      EmailAddress guardianEmail,
      @nullable Gender gender,
      ImmutableIds courseIds,
      ImmutableIds projectIds,
      ImmutableIds awardIds,
      bool isEmailVerified,
      Phone phone,
      Phone guardianPhone,
      String photoURL,
      @nullable @nullable DateTime createdAt,
      @nullable @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt});
}

/// @nodoc
class __$StudentCopyWithImpl<$Res> extends _$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(_Student _value, $Res Function(_Student) _then)
      : super(_value, (v) => _then(v as _Student));

  @override
  _Student get _value => super._value as _Student;

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
    Object guardianPhone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_Student(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      guardianEmail: guardianEmail == freezed
          ? _value.guardianEmail
          : guardianEmail as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as ImmutableIds,
      projectIds: projectIds == freezed
          ? _value.projectIds
          : projectIds as ImmutableIds,
      awardIds:
          awardIds == freezed ? _value.awardIds : awardIds as ImmutableIds,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      phone: phone == freezed ? _value.phone : phone as Phone,
      guardianPhone: guardianPhone == freezed
          ? _value.guardianPhone
          : guardianPhone as Phone,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_Student extends _Student {
  const _$_Student(
      {@nullable this.id,
      @required this.displayName,
      @required this.email,
      this.guardianEmail = EmailAddress.DEFAULT,
      @nullable this.gender,
      this.courseIds = ImmutableIds.EMPTY,
      this.projectIds = ImmutableIds.EMPTY,
      this.awardIds = ImmutableIds.EMPTY,
      this.isEmailVerified = false,
      this.phone = Phone.DEFAULT,
      this.guardianPhone = Phone.DEFAULT,
      this.photoURL = '',
      @nullable @nullable this.createdAt,
      @nullable @nullable this.lastSeenAt,
      @nullable this.updatedAt})
      : assert(displayName != null),
        assert(email != null),
        assert(guardianEmail != null),
        assert(courseIds != null),
        assert(projectIds != null),
        assert(awardIds != null),
        assert(isEmailVerified != null),
        assert(phone != null),
        assert(guardianPhone != null),
        assert(photoURL != null),
        super._();

  @override
  @nullable
  final UniqueId id;
  @override
  final DisplayName displayName;
  @override
  final EmailAddress email;
  @JsonKey(defaultValue: EmailAddress.DEFAULT)
  @override
  final EmailAddress guardianEmail;
  @override
  @nullable
  final Gender gender;
  @JsonKey(defaultValue: ImmutableIds.EMPTY)
  @override
  final ImmutableIds courseIds;
  @JsonKey(defaultValue: ImmutableIds.EMPTY)
  @override
  final ImmutableIds projectIds;
  @JsonKey(defaultValue: ImmutableIds.EMPTY)
  @override
  final ImmutableIds awardIds;
  @JsonKey(defaultValue: false)
  @override
  final bool isEmailVerified;
  @JsonKey(defaultValue: Phone.DEFAULT)
  @override
  final Phone phone;
  @JsonKey(defaultValue: Phone.DEFAULT)
  @override
  final Phone guardianPhone;
  @JsonKey(defaultValue: '')
  @override
  final String photoURL;
  @override
  @nullable
  @nullable
  final DateTime createdAt;
  @override
  @nullable
  @nullable
  final DateTime lastSeenAt;
  @override
  @nullable
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Student(id: $id, displayName: $displayName, email: $email, guardianEmail: $guardianEmail, gender: $gender, courseIds: $courseIds, projectIds: $projectIds, awardIds: $awardIds, isEmailVerified: $isEmailVerified, phone: $phone, guardianPhone: $guardianPhone, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Student &&
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
      const DeepCollectionEquality().hash(guardianPhone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$StudentCopyWith<_Student> get copyWith =>
      __$StudentCopyWithImpl<_Student>(this, _$identity);
}

abstract class _Student extends Student {
  const _Student._() : super._();
  const factory _Student(
      {@nullable UniqueId id,
      @required DisplayName displayName,
      @required EmailAddress email,
      EmailAddress guardianEmail,
      @nullable Gender gender,
      ImmutableIds courseIds,
      ImmutableIds projectIds,
      ImmutableIds awardIds,
      bool isEmailVerified,
      Phone phone,
      Phone guardianPhone,
      String photoURL,
      @nullable @nullable DateTime createdAt,
      @nullable @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt}) = _$_Student;

  @override
  @nullable
  UniqueId get id;
  @override
  DisplayName get displayName;
  @override
  EmailAddress get email;
  @override
  EmailAddress get guardianEmail;
  @override
  @nullable
  Gender get gender;
  @override
  ImmutableIds get courseIds;
  @override
  ImmutableIds get projectIds;
  @override
  ImmutableIds get awardIds;
  @override
  bool get isEmailVerified;
  @override
  Phone get phone;
  @override
  Phone get guardianPhone;
  @override
  String get photoURL;
  @override
  @nullable
  @nullable
  DateTime get createdAt;
  @override
  @nullable
  @nullable
  DateTime get lastSeenAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  _$StudentCopyWith<_Student> get copyWith;
}
