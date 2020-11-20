import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/serializer/serializers.dart';
import 'package:smartlets/utils/utils.dart';

part 'student_dto.freezed.dart';
part 'student_dto.g.dart';

@freezed
@immutable
abstract class StudentDTO implements _$StudentDTO {
  const StudentDTO._();

  const factory StudentDTO({
    @JsonKey(ignore: true, includeIfNull: false, defaultValue: '') @nullable String id,
    @Default(Roles.student) @JsonKey(includeIfNull: false) @nullable @RoleSerializer() Roles role,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String displayName,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String email,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: []) @AuthProviderSerializer() List<AuthProvider> providers,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String guardianEmail,
    @required @JsonKey(includeIfNull: false) @nullable @GenderTypeSerializer() GenderType gender,
    @required @JsonKey(includeIfNull: false, defaultValue: []) @nullable List<String> courseIds,
    @required @JsonKey(includeIfNull: false, defaultValue: []) @nullable List<String> projectIds,
    @required @JsonKey(includeIfNull: false, defaultValue: []) @nullable List<String> awardIds,
    @required @JsonKey(includeIfNull: false, defaultValue: false) @nullable bool isEmailVerified,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String phone,
    @required @JsonKey(includeIfNull: false) @nullable @CountrySerializer() Country country,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String guardianPhone,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String photoURL,
    @required @JsonKey(includeIfNull: false) @nullable @ServerTimestampConverter() Timestamp createdAt,
    @required @JsonKey(includeIfNull: false) @nullable @ServerTimestampConverter() Timestamp lastSeenAt,
    @required @JsonKey(includeIfNull: false) @nullable @ServerTimestampConverter() Timestamp updatedAt,
  }) = _StudentDTO;

  factory StudentDTO.fromDomain(Student instance) {
    return StudentDTO(
      displayName: instance.displayName?.getOrNull,
      email: instance.email?.getOrNull,
      providers: instance.providers?.getOrNull?.asList(),
      guardianEmail: instance.guardianEmail?.getOrNull,
      gender: instance.gender?.getOrNull,
      courseIds: instance.courseIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      projectIds: instance.projectIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      awardIds: instance.awardIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      isEmailVerified: instance?.isEmailVerified,
      phone: instance.phone?.getOrNull,
      country: instance.phone?.country ?? instance.guardianPhone?.country,
      guardianPhone: instance.guardianPhone?.getOrNull ?? instance.phone?.getOrNull,
      photoURL: instance?.photoURL,
      createdAt: !instance.createdAt.isNull ? Timestamp.fromDate(instance?.createdAt) : null,
      lastSeenAt: !instance.lastSeenAt.isNull ? Timestamp.fromDate(instance?.lastSeenAt) : null,
      updatedAt: !instance.updatedAt.isNull ? Timestamp.fromDate(instance?.updatedAt) : Timestamp.fromDate(DateTime.now()),
    );
  }

  Student get domain {
    return Student(
      id: UniqueId.fromExternal(id),
      displayName: displayName != null ? DisplayName(displayName) : null,
      email: email != null ? EmailAddress(email) : null,
      providers: providers != null ? AuthProviders(providers.toImmutableList()) : AuthProviders.EMPTY,
      guardianEmail: guardianEmail != null ? EmailAddress(guardianEmail) : null,
      gender: gender != null ? Gender(gender) : null,
      isEmailVerified: isEmailVerified,
      phone: phone != null ? Phone(phone, country) : guardianPhone != null ? Phone(guardianPhone, country) : null,
      courseIds: courseIds != null
          ? ImmutableIds(input: courseIds.map<UniqueId>((e) => UniqueId.fromExternal(e)).toImmutableList())
          : ImmutableIds.EMPTY,
      awardIds: awardIds != null
          ? ImmutableIds(input: awardIds.map<UniqueId>((e) => UniqueId.fromExternal(e)).toImmutableList())
          : ImmutableIds.EMPTY,
      projectIds: projectIds != null
          ? ImmutableIds(input: projectIds.map<UniqueId>((e) => UniqueId.fromExternal(e)).toImmutableList())
          : ImmutableIds.EMPTY,
      guardianPhone: guardianPhone != null ? Phone(guardianPhone, country) : null,
      photoURL: photoURL,
      createdAt: createdAt?.toDate(),
      lastSeenAt: lastSeenAt?.toDate(),
      updatedAt: updatedAt?.toDate(),
    );
  }

  factory StudentDTO.fromJson(Map<String, dynamic> json) => _$StudentDTOFromJson(json);

  factory StudentDTO.fromDocument(DocumentSnapshot snapshot) =>
      StudentDTO.fromJson(!snapshot.data().isNull ? snapshot.data() : {}).copyWith(id: snapshot.id);
}
