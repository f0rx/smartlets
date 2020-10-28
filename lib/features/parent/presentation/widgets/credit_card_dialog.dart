import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CreditCardDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: false,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.symmetric(horizontal: App.width * 0.05),
      content: VerticalSpace(
        height: App.height * 0.4,
        width: App.width,
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              physics: BouncingScrollPhysics(),
              controller: ScrollController(),
              child: AnimatedContainer(
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
              ),
            ),
          ),
        ),
      ),
      // actionsPadding: ,
      actions: [
        FlatButton(onPressed: () => navigator.pop(context), child: Text('Cancel')),
        Builder(
          builder: (context) => FlatButton(
            onPressed: () {
              context.bloc<CreditCardCubit>().addNewCard();
              navigator.pop(context);
            },
            child: Text('Save'),
          ),
        ),
      ],
    );
  }
}
