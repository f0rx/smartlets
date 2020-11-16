import 'package:json_annotation/json_annotation.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/utils/utils.dart';

class RoleSerializer implements JsonConverter<Roles, String> {
  const RoleSerializer();

  @override
  Roles fromJson(String value) => !value.isNullOrBlank ? Roles.valueOf(value) : null;

  @override
  String toJson(Roles instance) => instance?.name;
}
