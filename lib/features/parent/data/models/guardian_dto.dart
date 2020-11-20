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
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: []) @AuthProviderSerializer() List<AuthProvider> providers,
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

  factory GuardianDTO.fromDomain(Guardian instance) {
    return GuardianDTO(
      role: instance.role,
      displayName: instance.displayName?.getOrNull,
      email: instance.email?.getOrNull,
      providers: instance.providers?.getOrNull?.asList(),
      isEmailVerified: instance?.isEmailVerified,
      childrenIds: instance?.childrenIds?.getOrNull?.iter?.map((e) => e.value)?.toList(),
      phone: instance.phone?.getOrNull,
      country: instance.phone?.country,
      photoURL: instance?.photoURL,
      createdAt: !instance.createdAt.isNull ? Timestamp.fromDate(instance?.createdAt) : null,
      lastSeenAt: !instance.lastSeenAt.isNull ? Timestamp.fromDate(instance?.lastSeenAt) : null,
      updatedAt: !instance.updatedAt.isNull ? Timestamp.fromDate(instance?.updatedAt) : Timestamp.fromDate(DateTime.now()),
    );
  }

  Guardian get domain {
    return Guardian(
      id: UniqueId.fromExternal(id),
      role: role,
      displayName: displayName != null ? DisplayName(displayName) : null,
      email: email != null ? EmailAddress(email) : null,
      providers: providers != null ? AuthProviders(providers.toImmutableList()) : AuthProviders.EMPTY,
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
