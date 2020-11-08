// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentAuthDTO _$_$_StudentAuthDTOFromJson(Map<String, dynamic> json) {
  return _$_StudentAuthDTO(
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    guardianEmail: json['guardianEmail'] as String,
    gender: json['gender'] as String,
    courseIds: (json['courseIds'] as List)?.map((e) => e as String)?.toList(),
    projectIds: (json['projectIds'] as List)?.map((e) => e as String)?.toList(),
    awardIds: (json['awardIds'] as List)?.map((e) => e as String)?.toList(),
    isEmailVerified: json['isEmailVerified'] as bool,
    phone: json['phone'] as String,
    country: const CountrySerializer().fromJson(json['country'] as Map<String, dynamic>),
    guardianPhone: json['guardianPhone'] as String,
    photoURL: json['photoURL'] as String,
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    lastSeenAt: const ServerTimestampConverter().fromJson(json['lastSeenAt']),
    updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
  );
}

Map<String, dynamic> _$_$_StudentAuthDTOToJson(_$_StudentAuthDTO instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'guardianEmail': instance.guardianEmail,
      'gender': instance.gender,
      'courseIds': instance.courseIds,
      'projectIds': instance.projectIds,
      'awardIds': instance.awardIds,
      'isEmailVerified': instance.isEmailVerified,
      'phone': instance.phone,
      'country': const CountrySerializer().toJson(instance.country),
      'guardianPhone': instance.guardianPhone,
      'photoURL': instance.photoURL,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'lastSeenAt': const ServerTimestampConverter().toJson(instance.lastSeenAt),
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
    };
