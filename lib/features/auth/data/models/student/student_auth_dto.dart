import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
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
    @JsonKey(ignore: true) String id,
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
    @nullable @ServerTimestampConverter() Timestamp updatedAt,
  }) = _StudentAuthDTO;

  factory StudentAuthDTO.fromDomain(Student student) {
    return StudentAuthDTO(
      displayName: student.displayName?.getOrEmpty,
      email: student.email?.getOrEmpty,
      guardianEmail: student.guardianEmail?.getOrEmpty,
      gender: student.gender?.getOrEmpty?.name,
      courseIds: student.courseIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      projectIds: student.projectIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      awardIds: student.awardIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      isEmailVerified: student?.isEmailVerified,
      phone: student.phone?.getOrEmpty,
      country: student.phone?.country,
      guardianPhone: student.guardianPhone?.getOrEmpty,
      photoURL: student?.photoURL,
      createdAt: Timestamp.fromDate(student?.createdAt),
      lastSeenAt: Timestamp.fromDate(student?.lastSeenAt),
      updatedAt: !student.updatedAt.isNull ? Timestamp.fromDate(student?.updatedAt) : null,
    );
  }

  Student get domain {
    return Student(
      id: UniqueId.fromExternal(id),
      displayName: DisplayName(displayName),
      email: EmailAddress(email),
      guardianEmail: EmailAddress(guardianEmail),
      gender: Gender(GenderType.valueOf(gender)),
      isEmailVerified: isEmailVerified,
      phone: Phone(phone, country),
      guardianPhone: Phone(guardianPhone, country),
      photoURL: photoURL,
      createdAt: createdAt?.toDate(),
      lastSeenAt: lastSeenAt?.toDate(),
      updatedAt: updatedAt?.toDate(),
    );
  }

  factory StudentAuthDTO.fromJson(Map<String, dynamic> json) => _$StudentAuthDTOFromJson(json);

  factory StudentAuthDTO.fromDocument(DocumentSnapshot snapshot) =>
      StudentAuthDTO.fromJson(snapshot.data()).copyWith(id: snapshot.id);
}
