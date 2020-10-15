import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class Chapter extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory Chapter({@required String input}) {
    assert(input != null);
    return Chapter._(right(input));
  }

  const Chapter._([this.value]);
}
