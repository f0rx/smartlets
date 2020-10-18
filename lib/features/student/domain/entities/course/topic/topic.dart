import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/student/domain/domain.dart';

part 'topic.freezed.dart';

@freezed
@immutable
abstract class Topic implements _$Topic {
  @protected
  const Topic._();

  const factory Topic({
    @required UniqueId id,
    @required Chapter title,
    @required Lessons lessons,
  }) = _Topic;

  int get lessonsCount => lessons.length;

  Duration get duration => lessons.duration;
}
