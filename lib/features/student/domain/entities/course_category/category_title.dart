import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CategoryTitle extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CategoryTitle({@required String input}) {
    assert(input != null);
    return CategoryTitle._(
      Validator.isEmpty(input)
        ..flatMap(
          (a) => Validator.multilineValidator(a),
        ),
    );
  }

  const CategoryTitle._([this.value]);
}
