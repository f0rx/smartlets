import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/features/parent/presentation/widgets/parent_widgets.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';

class ParentRootScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _ParentRootScreenState createState() => _ParentRootScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ParentNavCubit>()),
      ],
      child: this,
    );
  }
}

class _ParentRootScreenState extends State<ParentRootScreen> with AutomaticKeepAliveClientMixin {
  final List<ParentDestination<Widget>> destinations = ParentDestination.destinations;
  DateTime _buttonPressedTime;

  @override
  bool get wantKeepAlive => true;

  Future<bool> willPop() {
    DateTime now = DateTime.now();
    if (_buttonPressedTime == null || now.difference(_buttonPressedTime) > Helpers.willPopTimeout) {
      _buttonPressedTime = now;
      Fluttertoast.showToast(
        msg: "Tap again to exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return Future.value(false);
    } else {
      Fluttertoast.cancel();
      return Future.value(true);
    }
  }

  /*
  if (App.currentRoute == Routes.parentRootScreen && index == 0)
            navigator.pop();
          else if (App.currentRoute == Routes.parentRootScreen) context.bloc<ParentNavCubit>().indexChanged(0);
          return !(await inner(context).maybePop());
          // return !(await destinations.elementAt(index).navigatorKey.currentState.maybePop());
  */

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: () async => await willPop(),
      child: BlocBuilder<ParentNavCubit, int>(
        builder: (context, index) => Scaffold(
          body: IndexedStack(
            index: index,
            children: destinations.map((d) => d.page).toList(),
          ),
          bottomNavigationBar: ParentBottomNav(destinations),
        ),
      ),
    );
  }
}
