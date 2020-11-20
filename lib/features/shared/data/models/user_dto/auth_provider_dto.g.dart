// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_provider_dto;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthProviderDTO _$_$_AuthProviderDTOFromJson(Map<String, dynamic> json) {
  return _$_AuthProviderDTO(
    id: json['id'] as String ?? '',
    displayName: json['displayName'] as String ?? '',
    email: json['email'] as String ?? '',
    phoneNumber: json['phoneNumber'] as String ?? '',
    photoURL: json['photoURL'] as String ?? '',
    providerId: json['providerId'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_AuthProviderDTOToJson(_$_AuthProviderDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('photoURL', instance.photoURL);
  writeNotNull('providerId', instance.providerId);
  return val;
}
