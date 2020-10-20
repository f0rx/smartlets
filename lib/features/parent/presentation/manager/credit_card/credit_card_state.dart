part of 'credit_card_cubit.dart';

@freezed
@immutable
abstract class CreditCardState implements _$CreditCardState {
  static const Map<String, String> customCaptions = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name Surname',
    'MM_YY': 'MM/YY',
    'RESET': 'Reset',
  };

  const CreditCardState._();

  const factory CreditCardState({
    @required CreditCards cards,
    @required CreditCard card,
    @Default(false) bool isLoading,
  }) = _CreditCardState;

  factory CreditCardState.init() => CreditCardState(
        cards: CreditCards(input: emptyList<CreditCard>()),
        card: CreditCard(
          cardNumber: CardNumber(input: ""),
          cardholderName: CardholderName(input: ""),
          expires: CardExpirationDate(input: ""),
          cvv: CardVerificationValue(input: ""),
        ),
      );

  BoxDecoration get prevButtonStyle => BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey,
      );

  BoxDecoration get nextButtonStyle => BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            AppColors.accentColor.shade100,
            AppColors.accentColor.shade600,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      );

  BoxDecoration get resetButtonStyle => BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: AppColors.errorRed,
      );

  BoxDecoration get cardDecoration => BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: <BoxShadow>[BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))],
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      );

  TextStyle get buttonTextStyle => TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);
}
