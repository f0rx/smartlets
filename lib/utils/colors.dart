import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  Color hexToColor(String hex) => Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000);

  // App Colors
  static const _primaryPrivate = 0xffE5E5E5;
  static const _secondaryPrivate = 0xff333333;
  static const _accentPrivate = 0xff2A7B9B;

  static const MaterialColor primaryColor = const MaterialColor(
    _primaryPrivate,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFf2f2f2),
      500: const Color(_primaryPrivate),
      600: const Color(0xFFe6e6e6),
      700: const Color(0xFFcccccc),
      800: const Color(0xFFb3b3b3),
      900: const Color(0xFF999999),
    },
  );

  static const MaterialColor secondaryColor = const MaterialColor(
    _secondaryPrivate,
    const <int, Color>{
      50: const Color(0xFF737373),
      100: const Color(0xFF666666),
      200: const Color(0xFF595959),
      300: const Color(0xFF4d4d4d),
      400: const Color(0xFF404040),
      500: const Color(_secondaryPrivate),
      600: const Color(0xFF262626),
      700: const Color(0xFF1a1a1a),
      800: const Color(0xFF0d0d0d),
      900: const Color(0xFF000000),
    },
  );

  static const MaterialColor accentColor = const MaterialColor(
    _accentPrivate,
    const <int, Color>{
      50: const Color(0xFF5fb2d3),
      100: const Color(0xFF4ba9ce),
      200: const Color(0xFF379fc8),
      300: const Color(0xFF318fb4),
      400: const Color(0xFF2c7fa0),
      500: const Color(_accentPrivate),
      600: const Color(0xFF266f8c),
      700: const Color(0xFF215f78),
      800: const Color(0xFF1b4f64),
      900: const Color(0xFF164050),
    },
  );

  static const Color permissionGreen1 = Color(0xFF138750);
  static const Color permissionGreen2 = Color(0xFF177649);

  static const Color permissionGrey1 = Color(0xFFB9BABB);
  static const Color permissionGrey2 = Color(0xFF979797);
  static const Color welcomeGrey = Color(0xFF637381);

  static const Color background = Color(0xFFf8f8f8);

  static const Color lightRed = Color(0xFFFBEAE5);

  static const Color yellow = Color(0xFFECAE12);
  static const Color fbButton = Color(0xFF425bb4);
  static const Color googleButton = Color(0xFF34bbf0);
  static const Color twitterButton = Color(0xFF00acee);
  static const Color loginButton = Color(0xFF3871b6);

  static const Color errorRed = Color(0xFFff0000);

  static const Color green = Color(0xFF00C853);
  static const Color successGreen = Color(0xFF4bb543);
  static const Color buttonGrey = Color(0xFFBDBDBD);

  static const Color transparent = Colors.transparent;

  static const Color navbarGrey = Color(0xFF4F4F4F);

  static const Color assessmentBlue = Color(0XFF0070E0);
  static const Color optionBlue = Color(0XFF007BF4);

  static const Color infectedBg = Color(0XFFFBEAE5);
  static const Color iconGrey = Color(0XFF455A64);
}
