import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:smartlets/features/shared/shared.dart';

class CardExpirationDate extends FieldObject<String> {
  final Either<FieldObjectException<String>, String> value;

  factory CardExpirationDate({@required String input}) {
    assert(input != null);
    return CardExpirationDate._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.cardExpiration(a),
      ),
    );
  }

  const CardExpirationDate._([this.value]);
}
