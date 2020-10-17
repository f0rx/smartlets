import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/student/domain/domain.dart';

part 'lesson.freezed.dart';

@freezed
@immutable
abstract class Lesson with _$Lesson {
  @protected
  const Lesson._();

  const factory Lesson({
    @required UniqueId id,
    @required LessonTitle title,
    @required Duration duration,
  }) = _Lesson;

  int get hours => duration.inHours;

  int get minutes => duration.inMinutes;

  int get seconds => duration.inSeconds;
}
