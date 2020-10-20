import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CardholderName extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CardholderName({@required String input}) {
    assert(input != null);
    return CardholderName._(
      Validator.isEmpty(input),
    );
  }

  const CardholderName._([this.value]);
}
