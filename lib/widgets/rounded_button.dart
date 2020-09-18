import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class MkButton extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final TextStyle style;
  final Color color;
  final double elevation;
  final double minFontSize;
  final double highlightElevation;
  final Color textColor;
  final double radius;
  final void Function() onPressed;

  MkButton({
    Key key,
    @required this.text,
    this.padding = EdgeInsets.zero,
    TextStyle style = const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    Color color,
    Color textColor,
    this.minFontSize = 15.0,
    this.elevation = 0.5,
    this.highlightElevation = 0.8,
    this.radius = 17.0,
    @required this.onPressed,
  })  : color = color ?? App.theme.accentColor,
        textColor = textColor,
        style = style.copyWith(color: textColor ?? Colors.white, fontWeight: FontWeight.w600),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: RaisedButton(
        onPressed: onPressed,
        child: HorizontalSpace(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: AutoSizeText(
                "$text",
                style: style,
                minFontSize: minFontSize,
              ),
            ),
          ),
          width: double.infinity,
        ),
        elevation: elevation,
        highlightElevation: highlightElevation,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
