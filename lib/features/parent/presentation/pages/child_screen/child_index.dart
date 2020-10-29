import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ChildIndexPage extends StatelessWidget {
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
            AppAssets.joyride,
            //
            VerticalSpace(height: App.height * 0.04),
            //
            AutoSizeText(
              "Add your child to view progress, achievements and help them "
              "complete their exercises and projects.",
              minFontSize: 15.0,
              softWrap: true,
              wrapWords: true,
              textAlign: TextAlign.center,
            ),
            //
            VerticalSpace(height: App.height * 0.05),
            //
            MkButton(
              text: "Add Child",
              exteriorPadding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
