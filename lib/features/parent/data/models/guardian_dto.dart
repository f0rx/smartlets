import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/serializer/serializers.dart';
import 'package:smartlets/utils/utils.dart';

part 'guardian_dto.freezed.dart';
part 'guardian_dto.g.dart';

@freezed
@immutable
abstract class GuardianDTO implements _$GuardianDTO {
  const GuardianDTO._();

  const factory GuardianDTO({
    @JsonKey(ignore: true, includeIfNull: false, defaultValue: '') @nullable String id,
    @Default(Roles.parent) @JsonKey(includeIfNull: false) @nullable @RoleSerializer() Roles role,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String displayName,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String email,
    @required @JsonKey(includeIfNull: false, defaultValue: []) @nullable List<String> childrenIds,
    @required @JsonKey(includeIfNull: false, defaultValue: false) @nullable bool isEmailVerified,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String phone,
    @required @JsonKey(includeIfNull: false) @nullable @CountrySerializer() Country country,
    @required @JsonKey(includeIfNull: false, defaultValue: '') @nullable String photoURL,
    @required @JsonKey(includeIfNull: false) @nullable @ServerTimestampConverter() Timestamp createdAt,
    @required @JsonKey(includeIfNull: false) @nullable @ServerTimestampConverter() Timestamp lastSeenAt,
    @required @JsonKey(includeIfNull: false) @nullable @ServerTimestampConverter() Timestamp updatedAt,
  }) = _GuardianDTO;

  factory GuardianDTO.fromJson(Map<String, dynamic> json) => _$GuardianDTOFromJson(json);

  factory GuardianDTO.fromDomain(Guardian guardian) {
    return GuardianDTO(
      role: Roles.parent, // TODO: Debug this
      displayName: guardian.displayName?.getOrNull,
      email: guardian.email?.getOrNull,
      isEmailVerified: guardian?.isEmailVerified,
      childrenIds: guardian?.childrenIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      phone: guardian.phone?.getOrNull,
      country: guardian.phone?.country,
      photoURL: guardian?.photoURL,
      createdAt: !guardian.createdAt.isNull ? Timestamp.fromDate(guardian?.createdAt) : null,
      lastSeenAt: !guardian.lastSeenAt.isNull ? Timestamp.fromDate(guardian?.lastSeenAt) : null,
      updatedAt: !guardian.updatedAt.isNull ? Timestamp.fromDate(guardian?.updatedAt) : null,
    );
  }

  Guardian get domain {
    return Guardian(
      id: UniqueId.fromExternal(id),
      displayName: displayName != null ? DisplayName(displayName) : null,
      email: email != null ? EmailAddress(email) : null,
      isEmailVerified: isEmailVerified,
      childrenIds: childrenIds != null
          ? ImmutableIds(input: childrenIds.map<UniqueId>((e) => UniqueId.fromExternal(e)).toImmutableList())
          : ImmutableIds.EMPTY,
      phone: phone != null ? Phone(phone, country) : null,
      photoURL: photoURL,
      createdAt: createdAt?.toDate(),
      lastSeenAt: lastSeenAt?.toDate(),
      updatedAt: updatedAt?.toDate(),
    );
  }

  factory GuardianDTO.fromDocument(DocumentSnapshot snapshot) =>
      GuardianDTO.fromJson(!snapshot.data().isNull ? snapshot.data() : {}).copyWith(id: snapshot.id);
}
