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
  Map<String, dynamic> toJson(Country instance) => <String, dynamic>{
        "name": instance.name.name,
        "codeName": instance.codeName,
        "dialCode": instance.dialCode,
        "language": instance.language,
      };
}
