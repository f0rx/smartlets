import 'package:json_annotation/json_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

class CountrySerializer implements JsonConverter<Country, Map<String, dynamic>> {
  const CountrySerializer();

  @override
  Country fromJson(Map<String, dynamic> json) => Country(
      name: CountryName.valueOf(!json.isNullOrBlank ? json['name'] as String : Country.NG.name.name),
      codeName: !json.isNullOrBlank ? json['codeName'] as String : '',
      dialCode: !json.isNullOrBlank ? json['dialCode'] as String : '',
      language: !json.isNullOrBlank ? json['language'] as String : '',
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
