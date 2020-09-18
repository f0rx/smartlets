import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/parent/domain/entities/premium_feature.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class PaymentIndexPage extends StatelessWidget {
  final premiumFeatures = PremiumFeature.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              VerticalSpace(height: App.height * 0.04),
              //
              AppAssets.upgrade,
              //
              VerticalSpace(height: App.height * 0.025),
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
              VerticalSpace(height: App.height * 0.01),
              //
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.01),
              //
              MkButton(
                text: "Start 14 Days Free Trial",
                padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                onPressed: () {},
              ),
              //
              VerticalSpace(height: App.height * 0.01),
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
              //
              VerticalSpace(height: App.height * 0.01),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText("FAQ", style: TextStyle(decoration: TextDecoration.underline)),
                  AutoSizeText("Privacy Policy", style: TextStyle(decoration: TextDecoration.underline)),
                ],
              ),
              //
              VerticalSpace(height: App.height * 0.007),
            ],
          ),
        ),
      ),
    );
  }
}
