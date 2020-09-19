import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/features/parent/presentation/widgets/parent_widgets.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';

class ParentRootScreen extends StatelessWidget with AutoRouteWrapper {
  final List<ParentDestination<Widget>> destinations = ParentDestination.destinations;

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ParentNavCubit>()),
        BlocProvider(create: (_) => getIt<WillPopCubit>()),
      ],
      child: this,
    );
  }

  /*
  if (App.currentRoute == Routes.parentRootScreen && index == 0)
            navigator.pop();
          else if (App.currentRoute == Routes.parentRootScreen) context.bloc<ParentNavCubit>().indexChanged(0);
          return !(await inner(context).maybePop());
          // return !(await destinations.elementAt(index).navigatorKey.currentState.maybePop());
  */
  @override
  Widget build(BuildContext context) => BlocConsumer<WillPopCubit, WillPopState>(
        listenWhen: (prev, current) => !current.canPop,
        listener: (context, state) {
          Toast.show(
            context: context,
            message: "Tap again to exit",
            duration: Helpers.willPopTimeout,
          );
        },
        builder: (context, _) {
          return WillPopScope(
            onWillPop: () async {
              context.bloc<WillPopCubit>().changePopScope();
              return context.bloc<WillPopCubit>().state.canPop;
            },
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
        },
      );
}
