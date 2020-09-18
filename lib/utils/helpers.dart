import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:smartlets/manager/theme/theme.dart';
import 'package:smartlets/widgets/widgets.dart';

// ignore: non_constant_identifier_names
final App = Helpers.I;

final log = Log;

ExtendedNavigatorState<RouterBase> get navigator => App.context.navigator;

ExtendedNavigatorState<RouterBase> inner(BuildContext context) => ExtendedNavigator.of(context);

NavigationHistoryObserver get observer => NavigationHistoryObserver();

// ignore: avoid_positional_boolean_parameters
void throwIf(bool condition, Object error) {
  if (condition) throw error;
}

// ignore: avoid_positional_boolean_parameters
void throwIfNot(bool condition, Object error) {
  if (!condition) throw error;
}

class Helpers {
  static const Duration autoRetrievalTimeout = const Duration(seconds: 40);
  static const String currency = "₦";

  static Helpers get I => Helpers._();
  static double buttonRadius = 12.0;
  static double buttonVerticalPadding = App.mediaQuery.size.width * 0.04;
  static double horizontalSpacing = App.mediaQuery.size.width * 0.04;
  static Duration willPopTimeout = const Duration(seconds: 3);

  static String writeNotNull(String other) {
    if (other.trim() != null || other.trim().isNotEmpty) {
      return other;
    }
    return '';
  }

  static DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day, d.hour, d.minute, d.second);

  static void hideKeyboard([BuildContext context]) {
    FocusNode currentFocus = FocusScope.of(context ?? App.context);
    if (!currentFocus.hasPrimaryFocus && !currentFocus.hasFocus && currentFocus.children.isEmpty)
      FocusManager.instance.primaryFocus.unfocus();
  }

  static T optionOf<T>(dynamic _default, dynamic other) {
    assert(_default != null);
    assert(other != null);
    return BlocProvider.of<ThemeCubit>(App.context).isDarkMode ? other : _default;
  }

  static void precache(BuildContext context) {
    // precacheImage(AssetImage("${AppAssets.ON_BOARDING_SVG_DIR}/connect.png"), context);
  }

  final DateTime today = DateTime.now();

  /// Current BuildContext
  BuildContext _ctx;

  Helpers._();

  Widget get circularLoadingOverlay => Container(
        color: App.theme.primaryColor.withOpacity(0.7),
        child: Center(
            child: AdaptiveCircularIndicator(
          width: width * 0.08,
          height: width * 0.08,
          strokeWidth: 3.5,
          radius: 14,
        )),
      );

  GlobalKey<NavigatorState> addKey(GlobalKey<NavigatorState> newKey) {
    key = newKey;
    return key;
  }

  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Map<int, GlobalKey<NavigatorState>> _keys = {};

  GlobalKey<NavigatorState> nestedKey(int key) {
    _keys.putIfAbsent(key, () => GlobalKey<NavigatorState>());
    return _keys[key];
  }

  GlobalKey<NavigatorState> global(int k) {
    if (k == null) {
      return key;
    }
    if (!_keys.containsKey(k)) {
      throw 'route id not found';
    }
    return _keys[k];
  }

  /// give access to currentContext
  BuildContext get context => _ctx ?? key.currentContext;

  /// Returns the current route path
  String get currentRoute => observer.top.settings.name;

  /// give access to current Overlay Context
  BuildContext get overlayContext => key.currentState.overlay.context;

  /// give access to Theme.of(context)
  ThemeData get theme => Theme.of(context);

  /// give access to TextTheme.of(context)
  TextTheme get textTheme => Theme.of(context).textTheme;

  /// give access to MediaQuery.of(context)
  MediaQueryData get mediaQuery => MediaQuery.of(context);

  /// give access to Theme.of(context).iconTheme.color
  Color get iconColor => Theme.of(context).iconTheme.color;

  /// give access to FocusScope.of(context)
  FocusNode get focusScope => FocusManager.instance.primaryFocus;

  /// give access to Immutable MediaQuery.of(context).size.height
  double get height => MediaQuery.of(context).size.height;

  /// give access to Immutable MediaQuery.of(context).size.width
  double get width => MediaQuery.of(context).size.width;

  /// Push the given [page], and then pop several [pages] in the stack until
  /// [predicate] returns true
  Future<T> offUntil<T>(Route<T> page, RoutePredicate predicate, {int id}) {
    // if (key.currentState.mounted) // add this if appear problems on future with route navigate
    // when widget don't mounted
    return global(id).currentState.pushAndRemoveUntil(page, predicate);
  }

  Future<T> offAllNamed<T>(String newRouteName, {RoutePredicate predicate, Object arguments, int id}) {
    var route = (Route<dynamic> rota) => false;

    return global(id).currentState.pushNamedAndRemoveUntil(newRouteName, predicate ?? route, arguments: arguments);
  }

  /// Push the given named [page], and then pop several pages in the stack
  /// until [predicate] returns true
  ///
  /// You can send any type of value to the other route in the [arguments].
  ///
  /// Note: Always put a slash on the route ('/page1'), to avoid unexpected errors
  Future<T> offNamedUntil<T>(
    String page,
    RoutePredicate predicate, {
    int id,
    Object arguments,
  }) {
    return global(id).currentState.pushNamedAndRemoveUntil(page, predicate, arguments: arguments);
  }

  /// Pop the current named page and pushes a new [page] to the stack in its place
  ///
  /// You can send any type of value to the other route in the [arguments].
  /// It is very similar to `offNamed()` but use a different approach
  ///
  /// The `offNamed()` pop a page, and goes to the next. The `offAndToNamed()` goes
  /// to the next page, and removes the previous one. The route transition
  /// animation is different.
  Future<T> offAndToNamed<T>(String page, {Object arguments, int id, dynamic result}) {
    return global(id).currentState.popAndPushNamed(page, arguments: arguments, result: result);
  }

  /// Remove a specific [route] from the stack
  ///
  /// [id] is for when you are using nested navigation,
  /// as explained in documentation
  void removeRoute(Route<dynamic> route, {int id}) {
    return global(id).currentState.removeRoute(route);
  }

  void forceAppUpdate() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  PageRoute<T> adaptivePageRoute<T>({
    String title,
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            title: title,
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }

  Future<U> showAlertDialog<U>({
    BuildContext context,
    WidgetBuilder builder,
    bool barrierDismissible = true,
    Color barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings routeSettings,
    @Deprecated('Instead of using the "child" argument, return the child from a closure '
        'provided to the "builder" argument. This will ensure that the BuildContext '
        'is appropriate for widgets built in the dialog. '
        'This feature was deprecated after v0.2.3.')
        Widget child,
  }) async {
    if (Platform.isIOS)
      return showCupertinoDialog<U>(
        context: context ?? App.context,
        builder: builder,
        useRootNavigator: useRootNavigator ?? true,
        barrierDismissible: barrierDismissible ?? false,
        routeSettings: routeSettings,
      );
    return showDialog<U>(
      context: context ?? App.context,
      builder: builder,
      barrierDismissible: barrierDismissible ?? true,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea ?? true,
      useRootNavigator: useRootNavigator ?? true,
      routeSettings: routeSettings,
      child: child,
    );
  }
}

class Log with LogMixin {
  final String tag;
  final String message;

  Log({this.tag, @required this.message});
}

mixin LogMixin {
  void d({String tag, String message, dynamic ex}) => print("debug: $tag: $message\n\n$ex");

  void w({String tag, String message, dynamic ex}) => print("Warning!! $tag: $message\n\n$ex");
}
