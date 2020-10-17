import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CourseTitle extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CourseTitle({@required String input}) {
    assert(input != null);
    return CourseTitle._(right(input));
  }

  const CourseTitle._([this.value]);
}
