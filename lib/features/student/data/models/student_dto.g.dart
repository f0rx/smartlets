// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentDTO _$_$_StudentDTOFromJson(Map<String, dynamic> json) {
  return _$_StudentDTO(
    role: const RoleSerializer().fromJson(json['role'] as String),
    displayName: json['displayName'] as String ?? '',
    email: json['email'] as String ?? '',
    providers: (json['providers'] as List)
            ?.map((e) => const AuthProviderSerializer()
                .fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    guardianEmail: json['guardianEmail'] as String ?? '',
    gender: const GenderTypeSerializer().fromJson(json['gender'] as String),
    courseIds:
        (json['courseIds'] as List)?.map((e) => e as String)?.toList() ?? [],
    projectIds:
        (json['projectIds'] as List)?.map((e) => e as String)?.toList() ?? [],
    awardIds:
        (json['awardIds'] as List)?.map((e) => e as String)?.toList() ?? [],
    isEmailVerified: json['isEmailVerified'] as bool ?? false,
    phone: json['phone'] as String ?? '',
    country: const CountrySerializer()
        .fromJson(json['country'] as Map<String, dynamic>),
    guardianPhone: json['guardianPhone'] as String ?? '',
    photoURL: json['photoURL'] as String ?? '',
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    lastSeenAt: const ServerTimestampConverter().fromJson(json['lastSeenAt']),
    updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
  );
}

Map<String, dynamic> _$_$_StudentDTOToJson(_$_StudentDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', const RoleSerializer().toJson(instance.role));
  writeNotNull('displayName', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('providers',
      instance.providers?.map(const AuthProviderSerializer().toJson)?.toList());
  writeNotNull('guardianEmail', instance.guardianEmail);
  writeNotNull('gender', const GenderTypeSerializer().toJson(instance.gender));
  writeNotNull('courseIds', instance.courseIds);
  writeNotNull('projectIds', instance.projectIds);
  writeNotNull('awardIds', instance.awardIds);
  writeNotNull('isEmailVerified', instance.isEmailVerified);
  writeNotNull('phone', instance.phone);
  writeNotNull('country', const CountrySerializer().toJson(instance.country));
  writeNotNull('guardianPhone', instance.guardianPhone);
  writeNotNull('photoURL', instance.photoURL);
  writeNotNull(
      'createdAt', const ServerTimestampConverter().toJson(instance.createdAt));
  writeNotNull('lastSeenAt',
      const ServerTimestampConverter().toJson(instance.lastSeenAt));
  writeNotNull(
      'updatedAt', const ServerTimestampConverter().toJson(instance.updatedAt));
  return val;
}
