import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';

class AuthAppBar extends AppBar {
  final double height;

  AuthAppBar({
    Key key,
    String title,
    Widget leading,
    TextStyle titleStyle = const TextStyle(fontWeight: FontWeight.w600),
    bool centerTitle = true,
    bool implyLeading = true,
    double elevation = 0.0,
    double height,
    Color backgroundColor = Colors.transparent,
    List<Widget> actions = const [],
  })  : height = height,
        super(
          title: !title.isNullOrBlank ? AutoSizeText(title, style: titleStyle, wrapWords: false, softWrap: false, maxLines: 1) : null,
          automaticallyImplyLeading: implyLeading,
          centerTitle: centerTitle,
          elevation: elevation,
          backgroundColor: backgroundColor,
          actions: actions,
          leading: implyLeading && navigator.canPop()
              ? Tooltip(
                  message: "Back",
                  child: IconButton(
                    icon: leading ?? Icon(Icons.keyboard_backspace),
                    onPressed: () => navigator.pop(),
                  ),
                )
              : null,
        );

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}
