// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuardianDTO _$_$_GuardianDTOFromJson(Map<String, dynamic> json) {
  return _$_GuardianDTO(
    role: const RoleSerializer().fromJson(json['role'] as String),
    displayName: json['displayName'] as String ?? '',
    email: json['email'] as String ?? '',
    childrenIds:
        (json['childrenIds'] as List)?.map((e) => e as String)?.toList() ?? [],
    isEmailVerified: json['isEmailVerified'] as bool ?? false,
    phone: json['phone'] as String ?? '',
    country: const CountrySerializer()
        .fromJson(json['country'] as Map<String, dynamic>),
    photoURL: json['photoURL'] as String ?? '',
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    lastSeenAt: const ServerTimestampConverter().fromJson(json['lastSeenAt']),
    updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
  );
}

Map<String, dynamic> _$_$_GuardianDTOToJson(_$_GuardianDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', const RoleSerializer().toJson(instance.role));
  writeNotNull('displayName', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('childrenIds', instance.childrenIds);
  writeNotNull('isEmailVerified', instance.isEmailVerified);
  writeNotNull('phone', instance.phone);
  writeNotNull('country', const CountrySerializer().toJson(instance.country));
  writeNotNull('photoURL', instance.photoURL);
  writeNotNull(
      'createdAt', const ServerTimestampConverter().toJson(instance.createdAt));
  writeNotNull('lastSeenAt',
      const ServerTimestampConverter().toJson(instance.lastSeenAt));
  writeNotNull(
      'updatedAt', const ServerTimestampConverter().toJson(instance.updatedAt));
  return val;
}
