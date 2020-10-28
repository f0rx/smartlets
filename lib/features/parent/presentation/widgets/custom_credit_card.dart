import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/parent/domain/credit_card/card.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CustomCreditCard extends StatelessWidget {
  final CreditCard card;
  final String cardType;

  const CustomCreditCard({
    Key key,
    @required this.card,
    this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: AppColors.cardColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        16.0,
      )),
      child: Container(
        height: App.height * 0.23,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: AppAssets.cardChip,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.01),
                    //
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: card.cardNumber.value
                            .getOrElse(() => "")
                            ?.split(" ")
                            ?.map(
                              (e) => Flexible(
                                child: AutoSizeText(
                                  "$e",
                                  softWrap: true,
                                  minFontSize: 25,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                            ?.toList(),
                      ),
                    ),
                  ],
                ),
              ),
              //
              VerticalSpace(height: 7.0),
              //
              Flexible(
                flex: 2,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Center(
                            child: AutoSizeText(
                              "${card.expires.value.getOrElse(() => "")}",
                              minFontSize: 17,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: AutoSizeText(
                            "${card.cardholderName.value.getOrElse(() => "")}",
                            minFontSize: 19,
                            textAlign: TextAlign.left,
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //
                    Positioned(
                      right: 0,
                      child: Text("$cardType"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
