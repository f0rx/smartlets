import 'package:auto_route/auto_route.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/manager/locator/locator.dart';

class AuthGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(ExtendedNavigatorState<RouterBase> navigator, String routeName, Object arguments) async {
    print("Printing from [AuthGuard.dart], RouteName: $routeName");
    return getIt<AuthFacade>().currentUser.isSome();
  }
}
