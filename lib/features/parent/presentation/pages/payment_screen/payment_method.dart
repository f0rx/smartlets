import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class PaymentMethodPage extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreditCardCubit>(),
      child: BlocBuilder<CreditCardCubit, CreditCardState>(
        builder: (context, _) => this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: App.width * 0.04).copyWith(top: App.mediaQuery.padding.top),
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
                  style: TextStyle(color: Colors.grey.shade400),
                  maxLines: 2,
                  minFontSize: 17,
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
