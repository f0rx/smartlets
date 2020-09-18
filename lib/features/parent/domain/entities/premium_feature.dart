import 'package:flutter/cupertino.dart';
import 'package:smartlets/utils/smartlets_icons.dart';
import 'package:smartlets/utils/utils.dart';

class PremiumFeature {
  final IconData icon;
  final String description;
  final Color color;

  PremiumFeature({this.icon = Smartlets.check_all, @required this.description, this.color});

  static List<PremiumFeature> get list => [
        PremiumFeature(
          description: "Unlimited access to all courses in the "
              "specialization including videos, "
              "articles, exercises, projects and more.",
          color: AppColors.fromHex("#FF5994"),
        ),
        PremiumFeature(
          description: "Cancel anytime. No penalties- simply cancel if it’s not right for your child.",
          color: AppColors.fromHex("#36FF62"),
        ),
        PremiumFeature(
          description: "${Helpers.currency}1200 per month to continue learning after trial ends.",
          color: AppColors.fromHex("#5FA2FF"),
        ),
        PremiumFeature(
          description: "Certificate when course is completed.",
          color: AppColors.fromHex("#FECD00"),
        ),
      ];
}
