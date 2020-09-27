import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smartlets/features/student/presentation/screens/exports.dart';
import 'package:smartlets/utils/smartlets_icons.dart';

class StudentDestination<E> {
  final GlobalKey<NavigatorState> navigatorKey;
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;
  final E page;

  StudentDestination({
    @required this.title,
    @required this.selectedIcon,
    @required this.navigatorKey,
    @required this.page,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<StudentDestination<Widget>> destinations = <StudentDestination<Widget>>[
    StudentDestination<Widget>(
      title: "Home",
      selectedIcon: Icon(Smartlets.home_filled),
      unSelectedIcon: Icon(Smartlets.home_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentHomeScreen(),
    ),
    StudentDestination<Widget>(
      title: "Courses",
      selectedIcon: Icon(Smartlets.book_filled),
      unSelectedIcon: Icon(Smartlets.book_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentCoursesScreen(),
    ),
    StudentDestination<Widget>(
      title: "Games",
      selectedIcon: Icon(Smartlets.game_pad_filled),
      unSelectedIcon: Icon(Smartlets.game_pad_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: GamesScreen(),
    ),
    StudentDestination<Widget>(
      title: "Profile",
      selectedIcon: Icon(Smartlets.account),
      unSelectedIcon: Icon(Smartlets.account_outline),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentProfileScreen(),
    ),
  ].toList();
}
