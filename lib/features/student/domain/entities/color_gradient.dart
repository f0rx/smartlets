import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/shared/shared.dart';

class ColorGradient extends FieldObject<KtList<Color>> {
  static const max = 2;
  final Either<FieldObjectException<String>, KtList<Color>> value;

  factory ColorGradient({@required KtList<Color> input}) {
    assert(input != null);
    return ColorGradient._(
      Validator.isEmpty(input)
        ..flatMap(
          (a) => Validator.maxListLength(a, max),
        ),
    );
  }

  const ColorGradient._([this.value]);
}
