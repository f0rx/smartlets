import 'package:auto_route/auto_route_annotations.dart';
import 'package:smartlets/features/_404.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(path: "*", page: UnknownRoute, maintainState: true),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
