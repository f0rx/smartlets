import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/serializer/serializers.dart';
import 'package:smartlets/utils/utils.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@immutable
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    @nullable @JsonKey(ignore: true, includeIfNull: false, defaultValue: '') String id,
    @nullable @JsonKey(ignore: true, includeIfNull: false, defaultValue: '') @RoleSerializer() Roles role,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String displayName,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String email,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: false) bool isEmailVerified,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: []) @AuthProviderSerializer() List<AuthProvider> providers,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String phone,
    @required @nullable @JsonKey(includeIfNull: false) @CountrySerializer() Country country,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String photoURL,
    @required
    @nullable
    @JsonKey(includeIfNull: false, toJson: UserDTO.timestampToMilliseconds)
    @ServerTimestampConverter()
        Timestamp createdAt,
    @required @nullable @JsonKey(includeIfNull: false) @ServerTimestampConverter() Timestamp lastSeenAt,
    @nullable @JsonKey(includeIfNull: false) @ServerTimestampConverter() Timestamp updatedAt,
  }) = _UserDTO;

  static int timestampToMilliseconds(Timestamp value) => value?.millisecondsSinceEpoch;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User instance) {
    return UserDTO(
      displayName: instance.displayName?.getOrNull,
      email: instance.email?.getOrNull,
      isEmailVerified: instance?.isEmailVerified,
      phone: instance.phone?.getOrNull,
      country: instance.phone?.country,
      photoURL: instance?.photoURL,
      providers: instance.providers?.getOrNull?.asList(),
      createdAt: !instance.createdAt.isNull ? Timestamp.fromDate(instance?.createdAt) : null,
      lastSeenAt: !instance.lastSeenAt.isNull ? Timestamp.fromDate(instance?.lastSeenAt) : null,
      updatedAt: Timestamp.fromDate(DateTime.now()),
    );
  }

  User get domain {
    return User(
      id: UniqueId.fromExternal(id),
      role: role,
      displayName: displayName != null ? DisplayName(displayName) : null,
      email: email != null ? EmailAddress(email) : null,
      isEmailVerified: isEmailVerified,
      providers: providers != null ? AuthProviders(providers.toImmutableList()) : AuthProviders.EMPTY,
      phone: phone != null ? Phone(phone, country) : null,
      photoURL: photoURL,
      createdAt: createdAt?.toDate(),
      lastSeenAt: lastSeenAt?.toDate(),
    );
  }

  factory UserDTO.fromDocument(DocumentSnapshot snapshot) =>
      UserDTO.fromJson(!snapshot.data().isNull ? snapshot.data() : {}).copyWith(
        id: snapshot.id,
        role: !snapshot.data().isNull && snapshot.data().containsKey('role')
            ? Roles.valueOf(
                snapshot.data()['role'],
              )
            : null,
      );
}
