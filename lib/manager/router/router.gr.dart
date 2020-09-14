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
import 'package:smartlets/features/parent/presentation/pages/root_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String loginScreen = '/login-screen';
  static const String signupScreen = '/signup-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String emailSentScreen = '/email-sent-screen';
  static const String parentRootScreen = '/parent-root-screen';
  static const String unknownRoute = '*';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    loginScreen,
    signupScreen,
    forgotPasswordScreen,
    emailSentScreen,
    parentRootScreen,
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
        maintainState: true,
      );
    },
    SignupScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SignupScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    ForgotPasswordScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ForgotPasswordScreen().wrappedRoute(context),
        settings: data,
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
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    ParentRootScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ParentRootScreen(),
        settings: data,
        maintainState: true,
      );
    },
    UnknownRoute: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UnknownRoute(),
        settings: data,
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

  Future<dynamic> pushOnBoardingScreen() =>
      push<dynamic>(Routes.onBoardingScreen);

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushSignupScreen() => push<dynamic>(Routes.signupScreen);

  Future<dynamic> pushForgotPasswordScreen() =>
      push<dynamic>(Routes.forgotPasswordScreen);

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

  Future<dynamic> pushParentRootScreen() =>
      push<dynamic>(Routes.parentRootScreen);

  Future<dynamic> pushUnknownRoute() => push<dynamic>(Routes.unknownRoute);
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
