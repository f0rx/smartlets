import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dartz/dartz.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/domain/entities/user/user.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class StudentBottomNav extends StatelessWidget {
  final List<StudentDestination<IconData>> destinations;

  const StudentBottomNav(this.destinations, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentNavCubit, int>(
      builder: (context, state) => StreamBuilder<Option<User>>(
        stream: getIt<AuthFacade>().onAuthStateChanged,
        builder: (context, snapshot) {
          return CurvedNavigationBar(
            index: state,
            height: kBottomNavigationBarHeight,
            items: destinations
                .map(
                  (dest) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Visibility(
                        visible: !dest.title.caseInsensitiveContains("profile"),
                        replacement: ExtendedImage.network(
                          snapshot.data?.getOrElse(() => null)?.photoURL ?? AppAssets.onlineAnonymous,
                          height: 25,
                          fit: BoxFit.cover,
                          shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(100.0),
                          clipBehavior: Clip.antiAlias,
                          clearMemoryCacheIfFailed: false,
                          handleLoadingProgress: true,
                          retries: 999899,
                          isAntiAlias: true,
                          loadStateChanged: (state) {
                            switch (state.extendedImageLoadState) {
                              case LoadState.loading:
                                return CircularProgressBar.adaptive(
                                  width: App.width * 0.06,
                                  height: App.width * 0.06,
                                  strokeWidth: 3,
                                  radius: 12,
                                );
                              case LoadState.completed:
                                return state.completedWidget;
                              case LoadState.failed:
                                return Center(child: Icon(Icons.error, color: Theme.of(context).accentColor));
                              default:
                                return Center(child: Icon(Icons.error, color: Theme.of(context).accentColor));
                            }
                          },
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
          );
        },
      ),
    );
  }
}
