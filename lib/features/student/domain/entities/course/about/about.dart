import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
@immutable
abstract class About implements _$About {
  @protected
  const About._();

  const factory About({
    @required UniqueId id,
    @required String description,
    @Default(DifficultyLevel.Normal) DifficultyLevel difficulty,
    @Default("500 Level") String level,
    @Default("English") String language,
  }) = _About;

  static About get dflt => About(
        id: UniqueId(),
        description: "",
      );
}

class DifficultyLevel extends EnumClass {
  static const DifficultyLevel Easy = _$Easy;
  static const DifficultyLevel Normal = _$Normal;
  static const DifficultyLevel Hard = _$Hard;
  static const DifficultyLevel Advanced = _$Advanced;

  const DifficultyLevel._(String name) : super(name);

  static BuiltSet<DifficultyLevel> get values => _$values;

  static DifficultyLevel valueOf(String name) => _$valueOf(name);
}
