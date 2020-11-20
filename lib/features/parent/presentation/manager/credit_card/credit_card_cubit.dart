import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/parent/domain/credit_card/card.dart';
import 'package:smartlets/utils/utils.dart';

part 'credit_card_cubit.freezed.dart';
part 'credit_card_state.dart';

@Injectable()
class CreditCardCubit extends Cubit<CreditCardState> {
  CreditCardCubit() : super(CreditCardState.init());

  void addNewCard() {
    emit(
      state.copyWith(
        cards: CreditCards(input: state.cards.add(state.card)),
        card: CreditCardState.blankCard,
      ),
    );
  }

  void infoChanged({
    @required String number,
    @required String name,
    @required String date,
    @required String cvv,
  }) {
    emit(
      state.copyWith(
        card: state.card.copyWith(
          cardNumber: CardNumber(input: number),
          cardholderName: CardholderName(input: name),
          expires: CardExpirationDate(input: date),
          cvv: CardVerificationValue(input: cvv),
        ),
      ),
    );
  }
}
