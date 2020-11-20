library auth_provider_dto;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/shared/domain/entities/user/auth_provider.dart';
import 'package:smartlets/utils/utils.dart';

part 'auth_provider_dto.freezed.dart';
part 'auth_provider_dto.g.dart';

@freezed
@immutable
abstract class AuthProviderDTO implements _$AuthProviderDTO {
  const AuthProviderDTO._();

  const factory AuthProviderDTO({
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String id,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String displayName,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String email,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String phoneNumber,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String photoURL,
    @required @nullable @JsonKey(includeIfNull: false, defaultValue: '') String providerId,
  }) = _AuthProviderDTO;

  factory AuthProviderDTO.fromJson(Map<String, dynamic> json) => _$AuthProviderDTOFromJson(json);

  factory AuthProviderDTO.fromDomain(AuthProvider instance) {
    return AuthProviderDTO(
      id: instance.id,
      displayName: instance.displayName,
      email: instance.email,
      phoneNumber: instance.phoneNumber,
      providerId: instance.providerId,
      photoURL: instance.photoURL,
    );
  }

  AuthProvider get domain {
    return AuthProvider(
      id: id,
      displayName: displayName,
      email: email,
      providerId: providerId,
      phoneNumber: phoneNumber,
      photoURL: photoURL,
    );
  }

  factory AuthProviderDTO.fromDocument(DocumentSnapshot snapshot) =>
      AuthProviderDTO.fromJson(!snapshot.data().isNull ? snapshot.data() : {});
}
