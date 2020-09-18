import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class NotificationIndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _EmptyList(),
    );
  }
}

class _EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: App.width * .1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppAssets.notify,
            //
            VerticalSpace(height: App.height * 0.04),
            //
            AutoSizeText(
              "You have no notifications yet. We will let you know when something happens.",
              minFontSize: 15.0,
              softWrap: true,
              wrapWords: true,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
