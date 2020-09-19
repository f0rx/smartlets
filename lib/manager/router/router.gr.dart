// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smartlets/features/_404.dart';
import 'package:smartlets/features/auth/presentation/pages/auth_screens.dart';
import 'package:smartlets/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:smartlets/features/on_boarding/presentation/splash_screen.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/pages/pages.dart';
import 'package:smartlets/features/parent/presentation/screens/export.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String loginScreen = '/login';
  static const String signupScreen = '/register';
  static const String forgotPasswordScreen = '/forgot-password';
  static const String emailSentScreen = '/email-sent-screen';
  static const String parentRootScreen = '/parent-root-screen';
  static const String paymentScreen = '/payment';
  static const String childScreen = '/child';
  static const String notificationScreen = '/notifications';
  static const String profileScreen = '/profile';
  static const String unknownRoute = '*';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    loginScreen,
    signupScreen,
    forgotPasswordScreen,
    emailSentScreen,
    parentRootScreen,
    paymentScreen,
    childScreen,
    notificationScreen,
    profileScreen,
    unknownRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.signupScreen, page: SignupScreen),
    RouteDef(Routes.forgotPasswordScreen, page: ForgotPasswordScreen),
    RouteDef(Routes.emailSentScreen, page: EmailSentScreen),
    RouteDef(Routes.parentRootScreen, page: ParentRootScreen),
    RouteDef(
      Routes.paymentScreen,
      page: PaymentScreen,
      generator: PaymentScreenRouter(),
    ),
    RouteDef(
      Routes.childScreen,
      page: ChildScreen,
      generator: ChildScreenRouter(),
    ),
    RouteDef(
      Routes.notificationScreen,
      page: NotificationScreen,
      generator: NotificationScreenRouter(),
    ),
    RouteDef(
      Routes.profileScreen,
      page: ProfileScreen,
      generator: ProfileScreenRouter(),
    ),
    RouteDef(Routes.unknownRoute, page: UnknownRoute),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
        maintainState: true,
      );
    },
    OnBoardingScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
        maintainState: true,
      );
    },
    LoginScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Login',
        maintainState: true,
      );
    },
    SignupScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SignupScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Sign Up',
        maintainState: true,
      );
    },
    ForgotPasswordScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ForgotPasswordScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Forgot Password',
        maintainState: true,
      );
    },
    EmailSentScreen: (data) {
      final args = data.getArgs<EmailSentScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EmailSentScreen(
          key: args.key,
          title: args.title,
          description: args.description,
          content: args.content,
          visual: args.visual,
          buttonText: args.buttonText,
          showResendButton: args.showResendButton,
          onTap: args.onTap,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Success',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    ParentRootScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ParentRootScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    PaymentScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaymentScreen(),
        settings: data,
        maintainState: true,
      );
    },
    ChildScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildScreen(),
        settings: data,
        maintainState: true,
      );
    },
    NotificationScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NotificationScreen(),
        settings: data,
        maintainState: true,
      );
    },
    ProfileScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
        maintainState: true,
      );
    },
    UnknownRoute: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UnknownRoute(),
        settings: data,
        cupertinoTitle: 'Error 404',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushOnBoardingScreen() => push<dynamic>(Routes.onBoardingScreen);

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushSignupScreen() => push<dynamic>(Routes.signupScreen);

  Future<dynamic> pushForgotPasswordScreen() => push<dynamic>(Routes.forgotPasswordScreen);

  Future<dynamic> pushEmailSentScreen({
    Key key,
    @required String title,
    String description,
    Widget content,
    Widget visual,
    @required String buttonText,
    bool showResendButton = false,
    void Function() onTap,
  }) =>
      push<dynamic>(
        Routes.emailSentScreen,
        arguments: EmailSentScreenArguments(
            key: key,
            title: title,
            description: description,
            content: content,
            visual: visual,
            buttonText: buttonText,
            showResendButton: showResendButton,
            onTap: onTap),
      );

  Future<dynamic> pushParentRootScreen() => push<dynamic>(Routes.parentRootScreen);

  Future<dynamic> pushPaymentScreen() => push<dynamic>(Routes.paymentScreen);

  Future<dynamic> pushChildScreen() => push<dynamic>(Routes.childScreen);

  Future<dynamic> pushNotificationScreen() => push<dynamic>(Routes.notificationScreen);

  Future<dynamic> pushProfileScreen() => push<dynamic>(Routes.profileScreen);

  Future<dynamic> pushUnknownRoute() => push<dynamic>(Routes.unknownRoute);
}

class PaymentScreenRoutes {
  static const String paymentIndexPage = '/';
  static const String paymentMethodPage = '/upgrade';
  static const all = <String>{
    paymentIndexPage,
    paymentMethodPage,
  };
}

class PaymentScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(PaymentScreenRoutes.paymentIndexPage, page: PaymentIndexPage),
    RouteDef(PaymentScreenRoutes.paymentMethodPage, page: PaymentMethodPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    PaymentIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaymentIndexPage(),
        settings: data,
        cupertinoTitle: 'Upgrade to PRO',
        maintainState: true,
      );
    },
    PaymentMethodPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaymentMethodPage(),
        settings: data,
        cupertinoTitle: 'Payment Method',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension PaymentScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushPaymentIndexPage() => push<dynamic>(PaymentScreenRoutes.paymentIndexPage);

  Future<dynamic> pushPaymentMethodPage() => push<dynamic>(PaymentScreenRoutes.paymentMethodPage);
}

class ChildScreenRoutes {
  static const String childIndexPage = '/';
  static const String createChildAccountPage = '/add-child-page';
  static const String showChildPage = '/show';
  static const String childCoursesPage = '/child-courses';
  static const String childAwardsPage = '/child-rewards';
  static const String childProjectsPage = '/child-projects';
  static const String childProjectDetailsPage = '/child-projects-details';
  static const all = <String>{
    childIndexPage,
    createChildAccountPage,
    showChildPage,
    childCoursesPage,
    childAwardsPage,
    childProjectsPage,
    childProjectDetailsPage,
  };
}

class ChildScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ChildScreenRoutes.childIndexPage, page: ChildIndexPage),
    RouteDef(ChildScreenRoutes.createChildAccountPage, page: CreateChildAccountPage),
    RouteDef(ChildScreenRoutes.showChildPage, page: ShowChildPage),
    RouteDef(ChildScreenRoutes.childCoursesPage, page: ChildCoursesPage),
    RouteDef(ChildScreenRoutes.childAwardsPage, page: ChildAwardsPage),
    RouteDef(ChildScreenRoutes.childProjectsPage, page: ChildProjectsPage),
    RouteDef(ChildScreenRoutes.childProjectDetailsPage, page: ChildProjectDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ChildIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildIndexPage(),
        settings: data,
        cupertinoTitle: 'Your Kids',
        maintainState: true,
      );
    },
    CreateChildAccountPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CreateChildAccountPage(),
        settings: data,
        cupertinoTitle: 'Create Child Account',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    ShowChildPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ShowChildPage(),
        settings: data,
        maintainState: true,
      );
    },
    ChildCoursesPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildCoursesPage(),
        settings: data,
        cupertinoTitle: 'Courses',
        maintainState: true,
      );
    },
    ChildAwardsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildAwardsPage(),
        settings: data,
        cupertinoTitle: 'Rewards',
        maintainState: true,
      );
    },
    ChildProjectsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildProjectsPage(),
        settings: data,
        cupertinoTitle: 'Projects',
        maintainState: true,
      );
    },
    ChildProjectDetailsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildProjectDetailsPage(),
        settings: data,
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension ChildScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushChildIndexPage() => push<dynamic>(ChildScreenRoutes.childIndexPage);

  Future<dynamic> pushCreateChildAccountPage() => push<dynamic>(ChildScreenRoutes.createChildAccountPage);

  Future<dynamic> pushShowChildPage() => push<dynamic>(ChildScreenRoutes.showChildPage);

  Future<dynamic> pushChildCoursesPage() => push<dynamic>(ChildScreenRoutes.childCoursesPage);

  Future<dynamic> pushChildAwardsPage() => push<dynamic>(ChildScreenRoutes.childAwardsPage);

  Future<dynamic> pushChildProjectsPage() => push<dynamic>(ChildScreenRoutes.childProjectsPage);

  Future<dynamic> pushChildProjectDetailsPage() => push<dynamic>(ChildScreenRoutes.childProjectDetailsPage);
}

class NotificationScreenRoutes {
  static const String notificationIndexPage = '/';
  static const all = <String>{
    notificationIndexPage,
  };
}

class NotificationScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(NotificationScreenRoutes.notificationIndexPage, page: NotificationIndexPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    NotificationIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NotificationIndexPage(),
        settings: data,
        cupertinoTitle: 'Notifications',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension NotificationScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushNotificationIndexPage() => push<dynamic>(NotificationScreenRoutes.notificationIndexPage);
}

class ProfileScreenRoutes {
  static const String parentProfileIndex = '/';
  static const String updateParentProfilePage = '/update';
  static const all = <String>{
    parentProfileIndex,
    updateParentProfilePage,
  };
}

class ProfileScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ProfileScreenRoutes.parentProfileIndex, page: ParentProfileIndex),
    RouteDef(ProfileScreenRoutes.updateParentProfilePage, page: UpdateParentProfilePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ParentProfileIndex: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ParentProfileIndex().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Your Profile',
        maintainState: true,
      );
    },
    UpdateParentProfilePage: (data) {
      final args = data.getArgs<UpdateParentProfilePageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UpdateParentProfilePage(
          args.user,
          key: args.key,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Update Profile',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension ProfileScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushParentProfileIndex() => push<dynamic>(ProfileScreenRoutes.parentProfileIndex);

  Future<dynamic> pushUpdateParentProfilePage({
    @required User user,
    Key key,
  }) =>
      push<dynamic>(
        ProfileScreenRoutes.updateParentProfilePage,
        arguments: UpdateParentProfilePageArguments(user: user, key: key),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EmailSentScreen arguments holder class
class EmailSentScreenArguments {
  final Key key;
  final String title;
  final String description;
  final Widget content;
  final Widget visual;
  final String buttonText;
  final bool showResendButton;
  final void Function() onTap;
  EmailSentScreenArguments(
      {this.key,
      @required this.title,
      this.description,
      this.content,
      this.visual,
      @required this.buttonText,
      this.showResendButton = false,
      this.onTap});
}

/// UpdateParentProfilePage arguments holder class
class UpdateParentProfilePageArguments {
  final User user;
  final Key key;
  UpdateParentProfilePageArguments({@required this.user, this.key});
}
