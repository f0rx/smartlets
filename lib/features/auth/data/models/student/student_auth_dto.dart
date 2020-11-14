import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/serializer/serializers.dart';
import 'package:smartlets/utils/utils.dart';

part 'student_auth_dto.freezed.dart';
part 'student_auth_dto.g.dart';

@freezed
@immutable
abstract class StudentAuthDTO implements _$StudentAuthDTO {
  const StudentAuthDTO._();

  const factory StudentAuthDTO({
    @JsonKey(ignore: true, includeIfNull: false, defaultValue: '') @nullable String id,
    @Default(Roles.student) @JsonKey(includeIfNull: false) @nullable @RoleSerializer() Roles role,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String displayName,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String email,
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
    @nullable @JsonKey(includeIfNull: false) @ServerTimestampConverter() Timestamp createdAt,
    @nullable @JsonKey(includeIfNull: false) @ServerTimestampConverter() Timestamp lastSeenAt,
    @nullable @JsonKey(includeIfNull: false) @ServerTimestampConverter() Timestamp updatedAt,
  }) = _StudentAuthDTO;

  factory StudentAuthDTO.fromDomain(Student student) {
    return StudentAuthDTO(
      displayName: student.displayName?.getOrNull,
      email: student.email?.getOrNull,
      guardianEmail: student.guardianEmail?.getOrNull,
      gender: student.gender?.getOrNull,
      courseIds: student.courseIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      projectIds: student.projectIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      awardIds: student.awardIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      isEmailVerified: student?.isEmailVerified,
      phone: student.phone?.getOrNull,
      country: student.phone?.country ?? student.guardianPhone?.country,
      guardianPhone: student.guardianPhone?.getOrNull ?? student.phone?.getOrNull,
      photoURL: student?.photoURL,
      createdAt: !student.createdAt.isNull ? Timestamp.fromDate(student?.createdAt) : null,
      lastSeenAt: !student.lastSeenAt.isNull ? Timestamp.fromDate(student?.lastSeenAt) : null,
      updatedAt: !student.updatedAt.isNull ? Timestamp.fromDate(student?.updatedAt) : null,
    );
  }

  Student get domain {
    return Student(
      id: UniqueId.fromExternal(id),
      displayName: displayName != null ? DisplayName(displayName) : null,
      email: email != null ? EmailAddress(email) : null,
      guardianEmail: guardianEmail != null ? EmailAddress(guardianEmail) : null,
      gender: gender != null ? Gender(gender) : null,
      isEmailVerified: isEmailVerified,
      phone: phone != null
          ? Phone(phone, country)
          : guardianPhone != null
              ? Phone(guardianPhone, country)
              : null,
      guardianPhone: guardianPhone != null ? Phone(guardianPhone, country) : null,
      photoURL: photoURL,
      createdAt: createdAt?.toDate(),
      lastSeenAt: lastSeenAt?.toDate(),
      updatedAt: updatedAt?.toDate(),
    );
  }

  factory StudentAuthDTO.fromJson(Map<String, dynamic> json) => _$StudentAuthDTOFromJson(json);

  factory StudentAuthDTO.fromDocument(DocumentSnapshot snapshot) =>
      StudentAuthDTO.fromJson(!snapshot.data().isNull ? snapshot.data() : {}).copyWith(id: snapshot.id);
}
