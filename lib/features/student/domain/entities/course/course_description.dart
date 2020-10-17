import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CourseDescription extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CourseDescription({@required String input}) {
    assert(input != null);
    return CourseDescription._(right(input));
  }

  const CourseDescription._([this.value]);
}
