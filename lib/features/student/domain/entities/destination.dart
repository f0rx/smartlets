import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smartlets/features/student/presentation/screens/exports.dart';
import 'package:smartlets/utils/smartlets_icons.dart';

class StudentDestination<E> {
  final GlobalKey<NavigatorState> navigatorKey;
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;
  final Widget page;

  StudentDestination({
    @required this.title,
    @required this.selectedIcon,
    @required this.navigatorKey,
    @required this.page,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<StudentDestination<IconData>> destinations = <StudentDestination<IconData>>[
    StudentDestination<IconData>(
      title: "Home",
      selectedIcon: Smartlets.home_filled,
      unSelectedIcon: Smartlets.home_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentHomeScreen(),
    ),
    StudentDestination<IconData>(
      title: "Courses",
      selectedIcon: Smartlets.book_filled,
      unSelectedIcon: Smartlets.book_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentCoursesScreen(),
    ),
    StudentDestination<IconData>(
      title: "Games",
      selectedIcon: Smartlets.game_pad_filled,
      unSelectedIcon: Smartlets.game_pad_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: GamesScreen(),
    ),
    StudentDestination<IconData>(
      title: "Profile",
      selectedIcon: Smartlets.account,
      unSelectedIcon: Smartlets.account_outline,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentProfileScreen(),
    ),
  ].toList();
}
