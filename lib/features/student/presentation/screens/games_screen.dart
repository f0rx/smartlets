import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExtendedNavigator(
      navigatorKey: GlobalKey<NavigatorState>(),
      router: GamesScreenRouter(),
    );
  }
}
