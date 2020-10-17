// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LessonTearOff {
  const _$LessonTearOff();

// ignore: unused_element
  _Lesson call(
      {@required UniqueId id,
      @required LessonTitle title,
      @required Duration duration}) {
    return _Lesson(
      id: id,
      title: title,
      duration: duration,
    );
  }
}

// ignore: unused_element
const $Lesson = _$LessonTearOff();

mixin _$Lesson {
  UniqueId get id;
  LessonTitle get title;
  Duration get duration;

  $LessonCopyWith<Lesson> get copyWith;
}

abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res>;
  $Res call({UniqueId id, LessonTitle title, Duration duration});
}

class _$LessonCopyWithImpl<$Res> implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  final Lesson _value;
  // ignore: unused_field
  final $Res Function(Lesson) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as LessonTitle,
      duration: duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

abstract class _$LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$LessonCopyWith(_Lesson value, $Res Function(_Lesson) then) =
      __$LessonCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, LessonTitle title, Duration duration});
}

class __$LessonCopyWithImpl<$Res> extends _$LessonCopyWithImpl<$Res>
    implements _$LessonCopyWith<$Res> {
  __$LessonCopyWithImpl(_Lesson _value, $Res Function(_Lesson) _then)
      : super(_value, (v) => _then(v as _Lesson));

  @override
  _Lesson get _value => super._value as _Lesson;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object duration = freezed,
  }) {
    return _then(_Lesson(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as LessonTitle,
      duration: duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

class _$_Lesson extends _Lesson with DiagnosticableTreeMixin {
  const _$_Lesson(
      {@required this.id, @required this.title, @required this.duration})
      : assert(id != null),
        assert(title != null),
        assert(duration != null),
        super._();

  @override
  final UniqueId id;
  @override
  final LessonTitle title;
  @override
  final Duration duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lesson(id: $id, title: $title, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lesson'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Lesson &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(duration);

  @override
  _$LessonCopyWith<_Lesson> get copyWith =>
      __$LessonCopyWithImpl<_Lesson>(this, _$identity);
}

abstract class _Lesson extends Lesson {
  const _Lesson._() : super._();
  const factory _Lesson(
      {@required UniqueId id,
      @required LessonTitle title,
      @required Duration duration}) = _$_Lesson;

  @override
  UniqueId get id;
  @override
  LessonTitle get title;
  @override
  Duration get duration;
  @override
  _$LessonCopyWith<_Lesson> get copyWith;
}
