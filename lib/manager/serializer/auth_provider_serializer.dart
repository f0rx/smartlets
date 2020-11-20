import 'package:json_annotation/json_annotation.dart';
import 'package:smartlets/features/shared/domain/entities/user/auth_provider.dart';
import 'package:smartlets/utils/utils.dart';

class AuthProviderSerializer implements JsonConverter<AuthProvider, Map<String, dynamic>> {
  const AuthProviderSerializer();

  @override
  AuthProvider fromJson(Map<String, dynamic> json) => AuthProvider(
        id: !json.isNullOrBlank ? json['id'] as String : '',
        displayName: !json.isNullOrBlank ? json['displayName'] as String : '',
        email: !json.isNullOrBlank ? json['email'] as String : '',
        photoURL: !json.isNullOrBlank ? json['photoURL'] as String : '',
        phoneNumber: !json.isNullOrBlank ? json['phoneNumber'] as String : '',
        providerId: !json.isNullOrBlank ? json['providerId'] as String : '',
      );

  @override
  Map<String, dynamic> toJson(AuthProvider instance) {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) val[key] = value;
    }

    writeNotNull("id", instance?.id);
    writeNotNull("displayName", instance?.displayName);
    writeNotNull("email", instance?.email);
    writeNotNull("photoURL", instance?.photoURL);
    writeNotNull("phoneNumber", instance?.phoneNumber);
    writeNotNull("providerId", instance?.providerId);

    return val.isEmpty ? null : val;
  }
}
