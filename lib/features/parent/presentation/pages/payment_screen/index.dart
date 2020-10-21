import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/parent/domain/entities/premium_feature.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class PaymentIndexPage extends StatelessWidget {
  final List<PremiumFeature> premiumFeatures = PremiumFeature.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: ScrollController(),
                padding: EdgeInsets.zero.copyWith(top: App.mediaQuery.padding.top * 0.8),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                physics: BouncingScrollPhysics(),
                child: SafeArea(
                  top: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppAssets.upgrade,
                      //
                      VerticalSpace(height: App.height * 0.06),
                      //
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.width * 0.1),
                        child: AutoSizeText(
                          "Upgrade to Pro ${AppStrings.appName} For A Better Experience",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          minFontSize: 19,
                          softWrap: true,
                          wrapWords: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: premiumFeatures
                            .map(
                              (feature) => Flexible(
                                child: ListTile(
                                  leading: Icon(feature.icon, color: feature.color),
                                  title: AutoSizeText(
                                    feature.description,
                                    softWrap: true,
                                    wrapWords: true,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      MkButton(
                        text: "Start 14 Days Free Trial",
                        padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                        onPressed: () => inner(context).pushPaymentMethodPage(),
                        // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CreditCardExample())),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.02),
                      //
                      MkButton(
                        text: "Not Now",
                        padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        elevation: 0.0,
                        highlightElevation: 0.0,
                        textColor: Helpers.optionOf(Colors.black87, Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: AutoSizeText(
                    "FAQ",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
                //
                GestureDetector(
                  onTap: () {},
                  child: AutoSizeText(
                    "Privacy Policy",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
