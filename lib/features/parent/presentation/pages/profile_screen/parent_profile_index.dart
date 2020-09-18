import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/vertical_spacer.dart';
import 'package:smartlets/widgets/widgets.dart';

class ParentProfileIndex extends StatelessWidget {
  final List<ProfileTile> tiles = ProfileTile.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            children: [
              VerticalSpace(height: App.height * 0.05),
              AutoSizeText(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
                minFontSize: 30,
              ),
              //
              VerticalSpace(height: App.height * 0.02),
              //
              Stack(
                children: [
                  Column(
                    children: [
                      getIt<AuthFacade>().currentUser.fold(
                            () => null,
                            (a) => _Authenticated(user: a),
                          ),
                      //
                      Divider(thickness: 0.7, height: 0.0),
                    ],
                  ),
                  //
                  Positioned(
                    top: 45,
                    right: App.width * 0.03,
                    child: Padding(
                      padding: EdgeInsets.only(right: App.width * 0.04),
                      child: Material(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(50.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: App.width * 0.026,
                              vertical: App.width * 0.026,
                            ),
                            child: Icon(
                              Icons.photo_camera,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: App.height * 0.15),
                ],
              ),
              //
              Flexible(
                child: Column(
                  children: tiles.map(
                    (tile) {
                      if (!tile.builder.isNull)
                        return Flexible(
                          child: tile.builder(context),
                        );
                      return Flexible(
                        child: ListTile(
                          dense: true,
                          leading: Container(
                            padding: const EdgeInsets.all(6.5),
                            decoration: BoxDecoration(color: tile.leadingColor, borderRadius: BorderRadius.circular(8.0)),
                            child: tile.leading,
                          ),
                          title: Text("${tile.title}", style: const TextStyle(fontSize: 16.5)),
                          subtitle: Text("${tile.subtitle}", style: const TextStyle(fontSize: 13.0)),
                          onTap: () => tile.onPressed(context),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Authenticated extends StatelessWidget {
  final User user;

  const _Authenticated({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: App.height * 0.008, horizontal: App.width * 0.05),
          child: Row(
            children: [
              Container(
                child: CircleAvatar(
                  backgroundImage: user?.photoURL != null
                      ? Image.network(
                          user.photoURL,
                          errorBuilder: (context, obj, trace) => Center(child: Icon(Icons.error, color: Theme.of(context).accentColor)),
                          loadingBuilder: (_, child, progress) {
                            if (progress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: progress.expectedTotalBytes != null
                                    ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes
                                    : null,
                              ),
                            );
                          },
                        ).image
                      : AssetImage(AppAssets.anonymous),
                  backgroundColor: Theme.of(context).accentColor,
                  onBackgroundImageError: (_, trace) => Center(child: Icon(Icons.error, color: Theme.of(context).accentColor)),
                  radius: App.width * 0.09,
                ),
              ),
              HorizontalSpace(width: App.height * 0.02),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    holder(
                      AutoSizeText("${user?.displayName}", style: TextStyle(fontSize: 17.0)),
                      condition: user?.displayName != null && user.displayName.isNotEmpty,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.005),
                    //
                    holder(AutoSizeText("${user?.email}", style: App.textTheme.caption)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget holder(Widget area, {bool condition = true}) {
    return Visibility(
      visible: condition,
      child: area,
    );
  }
}
