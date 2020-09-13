import 'package:auto_route/auto_route_annotations.dart';
import 'package:smartlets/features/_404.dart';
import 'package:smartlets/features/auth/presentation/pages/auth_screens.dart';
import 'package:smartlets/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:smartlets/features/on_boarding/presentation/splash_screen.dart';
import 'package:smartlets/features/parent/presentation/pages/root_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashScreen, initial: true, maintainState: true),
    AdaptiveRoute(page: OnBoardingScreen, maintainState: true),
    AdaptiveRoute(page: LoginScreen, maintainState: true),
    AdaptiveRoute(page: SignupScreen, maintainState: true),
    AdaptiveRoute(page: ForgotPasswordScreen, maintainState: true),
    AdaptiveRoute(page: EmailSentScreen, maintainState: true, fullscreenDialog: true),
    AdaptiveRoute(page: ParentRootScreen, maintainState: true),
    AdaptiveRoute(path: "*", page: UnknownRoute, maintainState: true),
  ],
  generateNavigationHelperExtension: true,
  preferRelativeImports: false,
)
class $Router {}
