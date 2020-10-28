// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreditCardTearOff {
  const _$CreditCardTearOff();

// ignore: unused_element
  _CreditCard call(
      {@required CardNumber cardNumber,
      @required CardholderName cardholderName,
      @required CardExpirationDate expires,
      @required CardVerificationValue cvv}) {
    return _CreditCard(
      cardNumber: cardNumber,
      cardholderName: cardholderName,
      expires: expires,
      cvv: cvv,
    );
  }
}

// ignore: unused_element
const $CreditCard = _$CreditCardTearOff();

mixin _$CreditCard {
  CardNumber get cardNumber;
  CardholderName get cardholderName;
  CardExpirationDate get expires;
  CardVerificationValue get cvv;

  $CreditCardCopyWith<CreditCard> get copyWith;
}

abstract class $CreditCardCopyWith<$Res> {
  factory $CreditCardCopyWith(
          CreditCard value, $Res Function(CreditCard) then) =
      _$CreditCardCopyWithImpl<$Res>;
  $Res call(
      {CardNumber cardNumber,
      CardholderName cardholderName,
      CardExpirationDate expires,
      CardVerificationValue cvv});
}

class _$CreditCardCopyWithImpl<$Res> implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._value, this._then);

  final CreditCard _value;
  // ignore: unused_field
  final $Res Function(CreditCard) _then;

  @override
  $Res call({
    Object cardNumber = freezed,
    Object cardholderName = freezed,
    Object expires = freezed,
    Object cvv = freezed,
  }) {
    return _then(_value.copyWith(
      cardNumber:
          cardNumber == freezed ? _value.cardNumber : cardNumber as CardNumber,
      cardholderName: cardholderName == freezed
          ? _value.cardholderName
          : cardholderName as CardholderName,
      expires:
          expires == freezed ? _value.expires : expires as CardExpirationDate,
      cvv: cvv == freezed ? _value.cvv : cvv as CardVerificationValue,
    ));
  }
}

abstract class _$CreditCardCopyWith<$Res> implements $CreditCardCopyWith<$Res> {
  factory _$CreditCardCopyWith(
          _CreditCard value, $Res Function(_CreditCard) then) =
      __$CreditCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {CardNumber cardNumber,
      CardholderName cardholderName,
      CardExpirationDate expires,
      CardVerificationValue cvv});
}

class __$CreditCardCopyWithImpl<$Res> extends _$CreditCardCopyWithImpl<$Res>
    implements _$CreditCardCopyWith<$Res> {
  __$CreditCardCopyWithImpl(
      _CreditCard _value, $Res Function(_CreditCard) _then)
      : super(_value, (v) => _then(v as _CreditCard));

  @override
  _CreditCard get _value => super._value as _CreditCard;

  @override
  $Res call({
    Object cardNumber = freezed,
    Object cardholderName = freezed,
    Object expires = freezed,
    Object cvv = freezed,
  }) {
    return _then(_CreditCard(
      cardNumber:
          cardNumber == freezed ? _value.cardNumber : cardNumber as CardNumber,
      cardholderName: cardholderName == freezed
          ? _value.cardholderName
          : cardholderName as CardholderName,
      expires:
          expires == freezed ? _value.expires : expires as CardExpirationDate,
      cvv: cvv == freezed ? _value.cvv : cvv as CardVerificationValue,
    ));
  }
}

class _$_CreditCard extends _CreditCard with DiagnosticableTreeMixin {
  const _$_CreditCard(
      {@required this.cardNumber,
      @required this.cardholderName,
      @required this.expires,
      @required this.cvv})
      : assert(cardNumber != null),
        assert(cardholderName != null),
        assert(expires != null),
        assert(cvv != null),
        super._();

  @override
  final CardNumber cardNumber;
  @override
  final CardholderName cardholderName;
  @override
  final CardExpirationDate expires;
  @override
  final CardVerificationValue cvv;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreditCard(cardNumber: $cardNumber, cardholderName: $cardholderName, expires: $expires, cvv: $cvv)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreditCard'))
      ..add(DiagnosticsProperty('cardNumber', cardNumber))
      ..add(DiagnosticsProperty('cardholderName', cardholderName))
      ..add(DiagnosticsProperty('expires', expires))
      ..add(DiagnosticsProperty('cvv', cvv));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreditCard &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.cardholderName, cardholderName) ||
                const DeepCollectionEquality()
                    .equals(other.cardholderName, cardholderName)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality()
                    .equals(other.expires, expires)) &&
            (identical(other.cvv, cvv) ||
                const DeepCollectionEquality().equals(other.cvv, cvv)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(cardholderName) ^
      const DeepCollectionEquality().hash(expires) ^
      const DeepCollectionEquality().hash(cvv);

  @override
  _$CreditCardCopyWith<_CreditCard> get copyWith =>
      __$CreditCardCopyWithImpl<_CreditCard>(this, _$identity);
}

abstract class _CreditCard extends CreditCard {
  const _CreditCard._() : super._();
  const factory _CreditCard(
      {@required CardNumber cardNumber,
      @required CardholderName cardholderName,
      @required CardExpirationDate expires,
      @required CardVerificationValue cvv}) = _$_CreditCard;

  @override
  CardNumber get cardNumber;
  @override
  CardholderName get cardholderName;
  @override
  CardExpirationDate get expires;
  @override
  CardVerificationValue get cvv;
  @override
  _$CreditCardCopyWith<_CreditCard> get copyWith;
}
