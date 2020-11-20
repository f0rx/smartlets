import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/features/parent/presentation/widgets/parent_widgets.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class PaymentMethodPage extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => this;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(elevation: 0.0),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          child: Column(
            children: [
              AutoSizeText(
                "Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold),
                minFontSize: 25,
              ),
              //
              VerticalSpace(height: App.height * 0.02),
              //
              AutoSizeText(
                "You will not be charged until your 14 days free trial expires.",
                style: TextStyle(color: Colors.grey),
                maxLines: 2,
                minFontSize: 17,
                softWrap: true,
                textAlign: TextAlign.left,
              ),
              //
              VerticalSpace(height: App.height * 0.02),
              //
              BlocBuilder<CreditCardCubit, CreditCardState>(
                builder: (context, _) {
                  return ListView.builder(
                    shrinkWrap: true,
                    controller: ScrollController(),
                    scrollDirection: Axis.vertical,
                    itemCount: context.watch<CreditCardCubit>().state.cards.length,
                    itemBuilder: (_, i) => CustomCreditCard(
                      card: context.read<CreditCardCubit>().state.cards?.get(i),
                      cardType: "Master Card",
                    ),
                  );
                },
              ),
              //
              VerticalSpace(height: App.height * 0.02),
              //
              FlatButton(
                onPressed: () => App.showAlertDialog(
                  context: inner(context).context,
                  builder: (_) => CreditCardDialog(),
                  useSafeArea: true,
                ),
                clipBehavior: Clip.antiAlias,
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Helpers.buttonRadius)),
                child: HorizontalSpace(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: AutoSizeText(
                      "Add a new Debit Card",
                      minFontSize: 17.0,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
