import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';

class ParentBottomNav extends StatelessWidget {
  final List<ParentDestination<IconData>> destinations;

  const ParentBottomNav(this.destinations, {Key key}) : super(key: key);

  Image _image(String image) {
    if (image != null) return Image.network(image);
    return Image.asset("${AppAssets.HOME_IMAGES_DIR}/default-user.png");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParentNavCubit, int>(
      builder: (context, state) => StreamBuilder(
        stream: getIt<AuthFacade>().onAuthStateChanged,
        builder: (context, snapshot) => CurvedNavigationBar(
          index: state,
          height: kBottomNavigationBarHeight,
          items: destinations
              .map(
                (dest) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Visibility(
                      visible: !dest.title.caseInsensitiveContains("profile"),
                      replacement: CircleAvatar(
                        backgroundImage: _image(snapshot.data?.getOrElse(() => null)?.photoURL).image,
                        backgroundColor: Theme.of(context).accentColor,
                        radius: 14,
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
              context.bloc<ParentNavCubit>().indexChanged(index);
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
