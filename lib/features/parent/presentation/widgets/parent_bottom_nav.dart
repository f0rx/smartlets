import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';

class ParentBottomNav extends StatelessWidget {
  final List<ParentDestination<Widget>> destinations;

  const ParentBottomNav(this.destinations, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParentNavCubit, int>(
      builder: (context, state) => BottomNavigationBar(
        currentIndex: state,
        onTap: (index) {
          if (state != index)
            context.bloc<ParentNavCubit>().indexChanged(index);
          // If the user is re-selecting the tab, the common
          // behavior is to empty the stack.
          else
            inner(context).popUntil((route) => route.isFirst);
        },
        elevation: 3.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedItemColor: AppColors.accentColor.shade600,
        unselectedItemColor: Helpers.optionOf(AppColors.secondaryColor.shade400, AppColors.primaryColor),
        items: destinations
            .map<BottomNavigationBarItem>(
              (e) => BottomNavigationBarItem(
                title: Text(e.title),
                icon: e.unSelectedIcon,
                activeIcon: e.selectedIcon,
              ),
            )
            .toList(),
      ),
    );
  }
}
