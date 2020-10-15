import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CourseRating extends FieldObject<double> {
  final Either<FieldObjectException<String>, double> value;

  factory CourseRating({@required double input}) {
    assert(input != null);
    return CourseRating._(right(input));
  }

  const CourseRating._([this.value]);
}
