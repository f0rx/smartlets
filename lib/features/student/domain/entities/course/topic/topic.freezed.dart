// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TopicTearOff {
  const _$TopicTearOff();

// ignore: unused_element
  _Topic call(
      {@required UniqueId id,
      @required Chapter title,
      @required Lessons lessons}) {
    return _Topic(
      id: id,
      title: title,
      lessons: lessons,
    );
  }
}

// ignore: unused_element
const $Topic = _$TopicTearOff();

mixin _$Topic {
  UniqueId get id;
  Chapter get title;
  Lessons get lessons;

  $TopicCopyWith<Topic> get copyWith;
}

abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res>;
  $Res call({UniqueId id, Chapter title, Lessons lessons});
}

class _$TopicCopyWithImpl<$Res> implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  final Topic _value;
  // ignore: unused_field
  final $Res Function(Topic) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object lessons = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as Chapter,
      lessons: lessons == freezed ? _value.lessons : lessons as Lessons,
    ));
  }
}

abstract class _$TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$TopicCopyWith(_Topic value, $Res Function(_Topic) then) =
      __$TopicCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Chapter title, Lessons lessons});
}

class __$TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res>
    implements _$TopicCopyWith<$Res> {
  __$TopicCopyWithImpl(_Topic _value, $Res Function(_Topic) _then)
      : super(_value, (v) => _then(v as _Topic));

  @override
  _Topic get _value => super._value as _Topic;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object lessons = freezed,
  }) {
    return _then(_Topic(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as Chapter,
      lessons: lessons == freezed ? _value.lessons : lessons as Lessons,
    ));
  }
}

class _$_Topic extends _Topic with DiagnosticableTreeMixin {
  const _$_Topic(
      {@required this.id, @required this.title, @required this.lessons})
      : assert(id != null),
        assert(title != null),
        assert(lessons != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Chapter title;
  @override
  final Lessons lessons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Topic(id: $id, title: $title, lessons: $lessons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Topic'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('lessons', lessons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Topic &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality().equals(other.lessons, lessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(lessons);

  @override
  _$TopicCopyWith<_Topic> get copyWith =>
      __$TopicCopyWithImpl<_Topic>(this, _$identity);
}

abstract class _Topic extends Topic {
  const _Topic._() : super._();
  const factory _Topic(
      {@required UniqueId id,
      @required Chapter title,
      @required Lessons lessons}) = _$_Topic;

  @override
  UniqueId get id;
  @override
  Chapter get title;
  @override
  Lessons get lessons;
  @override
  _$TopicCopyWith<_Topic> get copyWith;
}
