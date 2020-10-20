import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smartlets/features/parent/presentation/screens/export.dart';
import 'package:smartlets/utils/smartlets_icons.dart';

class ParentDestination<E> {
  final GlobalKey<NavigatorState> navigatorKey;
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;
  final Widget page;

  ParentDestination({
    @required this.title,
    @required this.selectedIcon,
    @required this.navigatorKey,
    @required this.page,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<ParentDestination<IconData>> destinations = <ParentDestination<IconData>>[
    ParentDestination<IconData>(
      title: "Payment",
      selectedIcon: Smartlets.pay_filled,
      unSelectedIcon: Smartlets.pay_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: PaymentScreen(),
    ),
    ParentDestination<IconData>(
      title: "Kids",
      selectedIcon: Smartlets.group_users_filled,
      unSelectedIcon: Smartlets.group_users_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: ChildScreen(),
    ),
    ParentDestination<IconData>(
      title: "Notifications",
      selectedIcon: Smartlets.notification,
      unSelectedIcon: Smartlets.bell_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: NotificationScreen(),
    ),
    ParentDestination<IconData>(
      title: "Profile",
      selectedIcon: Smartlets.user_filled,
      unSelectedIcon: Smartlets.user_outlined,
      navigatorKey: GlobalKey<NavigatorState>(),
      page: ProfileScreen(),
    ),
  ].toList();
}
