import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smartlets/features/parent/presentation/screens/export.dart';
import 'package:smartlets/utils/smartlets_icons.dart';

class ParentDestination<E> {
  final GlobalKey<NavigatorState> navigatorKey;
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;
  final E page;

  ParentDestination({
    @required this.title,
    @required this.selectedIcon,
    @required this.navigatorKey,
    @required this.page,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<ParentDestination<Widget>> destinations = <ParentDestination<Widget>>[
    ParentDestination<Widget>(
      title: "Payment",
      selectedIcon: Icon(Smartlets.pay_filled),
      unSelectedIcon: Icon(Smartlets.pay_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: PaymentScreen(),
    ),
    ParentDestination<Widget>(
      title: "Kids",
      selectedIcon: Icon(Smartlets.group_users_filled),
      unSelectedIcon: Icon(Smartlets.group_users_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: ChildScreen(),
    ),
    ParentDestination<Widget>(
      title: "Notifications",
      selectedIcon: Icon(Smartlets.bell_filled),
      unSelectedIcon: Icon(Smartlets.bell_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: NotificationScreen(),
    ),
    ParentDestination<Widget>(
      title: "Profile",
      selectedIcon: Icon(Smartlets.user_filled),
      unSelectedIcon: Icon(Smartlets.user_outlined),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: ProfileScreen(),
    ),
  ].toList();
}
