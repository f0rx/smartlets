import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';

class CreditCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: BlocBuilder<CreditCardCubit, CreditCardState>(
        builder: (context, state) => CreditCardInputForm(
          showResetButton: true,
          onStateChange: (currentState, cardInfo) => context.bloc<CreditCardCubit>().infoChanged(
                number: cardInfo.cardNumber,
                name: cardInfo.name,
                date: cardInfo.validate,
                cvv: cardInfo.cvv,
              ),
          customCaptions: CreditCardState.customCaptions,
          cardCVV: context.bloc<CreditCardCubit>().state.card.cvv.value.getOrElse(() => ""),
          cardName: context.bloc<CreditCardCubit>().state.card.cardholderName.value.getOrElse(() => ""),
          cardNumber: context.bloc<CreditCardCubit>().state.card.cardNumber.value.getOrElse(() => ""),
          cardValid: context.bloc<CreditCardCubit>().state.card.expires.value.getOrElse(() => ""),
          intialCardState: InputState.NUMBER,
          frontCardDecoration: state.cardDecoration,
          // backCardDecoration: state.cardDecoration,
          prevButtonDecoration: state.prevButtonStyle,
          nextButtonDecoration: state.nextButtonStyle,
          resetButtonDecoration: state.resetButtonStyle,
          prevButtonTextStyle: state.buttonTextStyle,
          nextButtonTextStyle: state.buttonTextStyle,
          resetButtonTextStyle: state.buttonTextStyle,
        ),
      ),
    );
  }
}
