import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class LessonTitle extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory LessonTitle({@required String input}) {
    assert(input != null);
    return LessonTitle._(right(input));
  }

  const LessonTitle._([this.value]);
}
