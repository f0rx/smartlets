import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CategoryDescription extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CategoryDescription({@required String input}) {
    assert(input != null);
    // TODO: Add a Validator for Category Description
    return CategoryDescription._(right(input));
  }

  const CategoryDescription._([this.value]);
}
