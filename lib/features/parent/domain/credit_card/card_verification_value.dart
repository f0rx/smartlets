import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CardVerificationValue extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CardVerificationValue({@required String input}) {
    assert(input != null);
    return CardVerificationValue._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.onlyDigits(a),
      ),
    );
  }

  const CardVerificationValue._([this.value]);
}
