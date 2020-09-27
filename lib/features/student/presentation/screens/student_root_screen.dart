import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/features/student/presentation/widgets/student_widgets.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';

class StudentRootScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _StudentRootScreenState createState() => _StudentRootScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<StudentNavCubit>()),
      ],
      child: this,
    );
  }
}

class _StudentRootScreenState extends State<StudentRootScreen> with AutomaticKeepAliveClientMixin {
  final List<StudentDestination<Widget>> destinations = StudentDestination.destinations;
  DateTime _buttonPressedTime;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: () async => await Helpers.willPop(_buttonPressedTime),
      child: BlocBuilder<StudentNavCubit, int>(
        builder: (context, index) => Scaffold(
          body: IndexedStack(
            index: index,
            children: destinations.map((d) => d.page).toList(),
          ),
          bottomNavigationBar: StudentBottomNav(destinations),
        ),
      ),
    );
  }
}
