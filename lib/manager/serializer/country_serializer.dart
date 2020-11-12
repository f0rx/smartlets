import 'package:json_annotation/json_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CountrySerializer implements JsonConverter<Country, Map<String, dynamic>> {
  const CountrySerializer();

  @override
  Country fromJson(Map<String, dynamic> json) => Country(
        name: CountryName.valueOf(json['name'] as String),
        codeName: json['codeName'] as String,
        dialCode: json['dialCode'] as String,
        language: json['language'] as String,
      );

  @override
  Map<String, dynamic> toJson(Country instance) {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) val[key] = value;
    }

    writeNotNull("name", instance?.name?.name);
    writeNotNull("codeName", instance?.codeName);
    writeNotNull("dialCode", instance?.dialCode);
    writeNotNull("language", instance?.language);

    return val.isEmpty ? null : val;
  }
}
