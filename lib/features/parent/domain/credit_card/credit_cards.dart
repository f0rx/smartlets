import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/parent/domain/credit_card/card.dart';
import 'package:smartlets/features/shared/shared.dart';

class CreditCards extends FieldObject<KtList<CreditCard>> {
  final Either<FieldObjectException<String>, KtList<CreditCard>> value;

  factory CreditCards({@required KtList<CreditCard> input}) {
    assert(input != null);
    return CreditCards._(right(input));
  }

  const CreditCards._([this.value]);

  int get length => value.getOrElse(() => emptyList())?.size;

  bool get isEmpty => value.getOrElse(() => emptyList())?.isEmpty();

  bool get isNotEmpty => value.getOrElse(() => emptyList())?.isNotEmpty();

  bool exists(CreditCard card) => value.getOrElse(() => emptyList())?.any((c) => c == card);

  KtList<R> map<R>(R Function(CreditCard) transform) => value.getOrElse(() => emptyList())?.map(transform);

  void forEach(void Function(CreditCard) action) => value.getOrElse(() => emptyList())?.forEach(action);
}
