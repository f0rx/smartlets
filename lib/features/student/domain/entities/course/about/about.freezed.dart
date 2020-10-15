// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'about.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AboutTearOff {
  const _$AboutTearOff();

// ignore: unused_element
  _About call(
      {@required UniqueId id,
      @required String description,
      DifficultyLevel difficulty = DifficultyLevel.Normal,
      String level = '500 Level',
      String language = 'English'}) {
    return _About(
      id: id,
      description: description,
      difficulty: difficulty,
      level: level,
      language: language,
    );
  }
}

// ignore: unused_element
const $About = _$AboutTearOff();

mixin _$About {
  UniqueId get id;
  String get description;
  DifficultyLevel get difficulty;
  String get level;
  String get language;

  $AboutCopyWith<About> get copyWith;
}

abstract class $AboutCopyWith<$Res> {
  factory $AboutCopyWith(About value, $Res Function(About) then) =
      _$AboutCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String description,
      DifficultyLevel difficulty,
      String level,
      String language});
}

class _$AboutCopyWithImpl<$Res> implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._value, this._then);

  final About _value;
  // ignore: unused_field
  final $Res Function(About) _then;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object difficulty = freezed,
    Object level = freezed,
    Object language = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      description:
          description == freezed ? _value.description : description as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty as DifficultyLevel,
      level: level == freezed ? _value.level : level as String,
      language: language == freezed ? _value.language : language as String,
    ));
  }
}

abstract class _$AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$AboutCopyWith(_About value, $Res Function(_About) then) =
      __$AboutCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String description,
      DifficultyLevel difficulty,
      String level,
      String language});
}

class __$AboutCopyWithImpl<$Res> extends _$AboutCopyWithImpl<$Res>
    implements _$AboutCopyWith<$Res> {
  __$AboutCopyWithImpl(_About _value, $Res Function(_About) _then)
      : super(_value, (v) => _then(v as _About));

  @override
  _About get _value => super._value as _About;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object difficulty = freezed,
    Object level = freezed,
    Object language = freezed,
  }) {
    return _then(_About(
      id: id == freezed ? _value.id : id as UniqueId,
      description:
          description == freezed ? _value.description : description as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty as DifficultyLevel,
      level: level == freezed ? _value.level : level as String,
      language: language == freezed ? _value.language : language as String,
    ));
  }
}

class _$_About extends _About with DiagnosticableTreeMixin {
  const _$_About(
      {@required this.id,
      @required this.description,
      this.difficulty = DifficultyLevel.Normal,
      this.level = '500 Level',
      this.language = 'English'})
      : assert(id != null),
        assert(description != null),
        assert(difficulty != null),
        assert(level != null),
        assert(language != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String description;
  @JsonKey(defaultValue: DifficultyLevel.Normal)
  @override
  final DifficultyLevel difficulty;
  @JsonKey(defaultValue: '500 Level')
  @override
  final String level;
  @JsonKey(defaultValue: 'English')
  @override
  final String language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'About(id: $id, description: $description, difficulty: $difficulty, level: $level, language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'About'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('difficulty', difficulty))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _About &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.difficulty, difficulty) ||
                const DeepCollectionEquality()
                    .equals(other.difficulty, difficulty)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(difficulty) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(language);

  @override
  _$AboutCopyWith<_About> get copyWith =>
      __$AboutCopyWithImpl<_About>(this, _$identity);
}

abstract class _About extends About {
  const _About._() : super._();
  const factory _About(
      {@required UniqueId id,
      @required String description,
      DifficultyLevel difficulty,
      String level,
      String language}) = _$_About;

  @override
  UniqueId get id;
  @override
  String get description;
  @override
  DifficultyLevel get difficulty;
  @override
  String get level;
  @override
  String get language;
  @override
  _$AboutCopyWith<_About> get copyWith;
}
