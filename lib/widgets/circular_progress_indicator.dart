import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';

class AdaptiveCircularIndicator extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Color bgColor;
  final double value;
  final double strokeWidth;
  final bool forceShowIOS;

  /// [Cupertino] Whether the activity indicator is running its animation.
  final bool isAnimating;

  /// [Cupertino] Radius of the activity indicator.
  final double radius;

  AdaptiveCircularIndicator({
    this.width,
    this.height,
    this.color = AppColors.accentColor,
    this.value,
    this.strokeWidth = 4.0,
    this.bgColor,
    this.isAnimating = true,
    this.radius,
    this.forceShowIOS = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: _progressIndicator(),
    );
  }

  Widget _progressIndicator() {
    if (Platform.isIOS || forceShowIOS) {
      return CupertinoActivityIndicator(
        animating: isAnimating,
        radius: radius,
      );
    }
    return CircularProgressIndicator(
      value: value,
      valueColor: AlwaysStoppedAnimation(color),
      backgroundColor: bgColor,
      strokeWidth: strokeWidth,
      semanticsLabel: "Progress Indicator",
      semanticsValue: "1% completed.",
    );
  }
}
