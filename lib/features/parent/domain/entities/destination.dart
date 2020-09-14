import 'package:flutter/widgets.dart';

class Destination<E> {
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;

  Destination({
    @required this.title,
    @required this.selectedIcon,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<Destination<Widget>> destinations = <Destination<Widget>>[
    // Destination<Widget>(
    //   title: "Featured",
    //   selectedIcon: Icon(Eazox.star_filled),
    //   unSelectedIcon: Icon(Eazox.star_outline),
    // ),
    // Destination<Widget>(
    //   title: "Category",
    //   selectedIcon: Icon(Eazox.stack_filled),
    //   unSelectedIcon: Icon(Eazox.stack_outline),
    // ),
    // Destination<Widget>(
    //   title: "Favorite",
    //   selectedIcon: Icon(Eazox.heart_filled),
    //   unSelectedIcon: Icon(Eazox.heart_outline),
    // ),
    // Destination<Widget>(
    //   title: "Shopping Bag",
    //   selectedIcon: Icon(Eazox.bag_filled),
    //   unSelectedIcon: Icon(Eazox.bag_outline),
    // ),
  ].toList();
}
