import 'package:cached_network_image/cached_network_image.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class StudentBottomNav extends StatelessWidget {
  final List<StudentDestination<IconData>> destinations;

  const StudentBottomNav(this.destinations, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentNavCubit, int>(
      builder: (context, state) => BlocBuilder<StudentAuthCubit, StudentAuthState>(
        builder: (context, _) => CurvedNavigationBar(
          index: state,
          height: kBottomNavigationBarHeight,
          items: destinations
              .map(
                (dest) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Visibility(
                      visible: !dest.title.caseInsensitiveContains("profile"),
                      replacement: CachedNetworkImage(
                        imageUrl: context.watch<StudentAuthCubit>().state.student?.photoURL != null &&
                                !context.watch<StudentAuthCubit>().state.student.photoURL.isBlank
                            ? context.watch<StudentAuthCubit>().state.student?.photoURL
                            : AppAssets.onlineAnonymous,
                        imageBuilder: (context, provider) => CircleAvatar(
                          backgroundImage: provider,
                          backgroundColor: Theme.of(context).accentColor,
                          radius: 15.0,
                        ),
                        fit: BoxFit.cover,
                        // useOldImageOnUrlChange: true,
                        progressIndicatorBuilder: (context, val, progress) => Center(
                          child: CircularProgressBar.adaptive(
                            width: App.width * 0.06,
                            height: App.width * 0.06,
                            strokeWidth: 2.5,
                            value: progress.progress,
                          ),
                        ),
                        placeholderFadeInDuration: Duration(milliseconds: 300),
                      ),
                      child: Icon(
                        dest.selectedIcon,
                        color: Theme.of(context).accentColor,
                        semanticLabel: "${dest.title}",
                      ),
                    ),
                    Visibility(
                      visible: false,
                      child: Text(dest.title),
                    ),
                  ],
                ),
              )
              .toList(),
          color: Theme.of(context).primaryColor,
          buttonBackgroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          onTap: (index) {
            if (state != index)
              context.read<StudentNavCubit>().indexChanged(index);
            // If the user is re-selecting the tab, the common
            // behavior is to empty the stack.
            else
              inner(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
    );
  }
}
