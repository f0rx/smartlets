import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CardNumber extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CardNumber({@required String input}) {
    assert(input != null);
    return CardNumber._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.onlyDigits(a),
      ),
    );
  }

  const CardNumber._([this.value]);
}
