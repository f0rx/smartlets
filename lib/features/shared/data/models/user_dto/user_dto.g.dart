// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    displayName: json['displayName'] as String ?? '',
    email: json['email'] as String ?? '',
    isEmailVerified: json['isEmailVerified'] as bool ?? false,
    providers: (json['providers'] as List)
            ?.map((e) => const AuthProviderSerializer()
                .fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    phone: json['phone'] as String ?? '',
    country: const CountrySerializer()
        .fromJson(json['country'] as Map<String, dynamic>),
    photoURL: json['photoURL'] as String ?? '',
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    lastSeenAt: const ServerTimestampConverter().fromJson(json['lastSeenAt']),
    updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayName', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('isEmailVerified', instance.isEmailVerified);
  writeNotNull('providers',
      instance.providers?.map(const AuthProviderSerializer().toJson)?.toList());
  writeNotNull('phone', instance.phone);
  writeNotNull('country', const CountrySerializer().toJson(instance.country));
  writeNotNull('photoURL', instance.photoURL);
  writeNotNull(
      'createdAt', UserDTO.timestampToMilliseconds(instance.createdAt));
  writeNotNull('lastSeenAt',
      const ServerTimestampConverter().toJson(instance.lastSeenAt));
  writeNotNull(
      'updatedAt', const ServerTimestampConverter().toJson(instance.updatedAt));
  return val;
}
