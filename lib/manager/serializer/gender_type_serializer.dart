import 'package:json_annotation/json_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/utils/utils.dart';

class GenderTypeSerializer implements JsonConverter<GenderType, String> {
  const GenderTypeSerializer();

  @override
  GenderType fromJson(String value) => !value.isNullOrBlank ? GenderType.valueOf(value) : null;

  @override
  String toJson(GenderType instance) => instance?.name;
}
