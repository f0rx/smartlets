import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/parent/domain/credit_card/card.dart';
import 'package:flutter/foundation.dart';

part 'credit_card.freezed.dart';

@freezed
@immutable
abstract class CreditCard implements _$CreditCard {
  const CreditCard._();

  const factory CreditCard({
    @required CardNumber cardNumber,
    @required CardholderName cardholderName,
    @required CardExpirationDate expires,
    @required CardVerificationValue cvv,
  }) = _CreditCard;

  bool get isNotExpired => expires.isValid;
}
