import 'package:auto_size_text/auto_size_text.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class AuthenticatedProfileTile extends StatelessWidget {
  final User user;

  const AuthenticatedProfileTile({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: App.height * 0.008, horizontal: App.width * 0.05),
          child: Row(
            children: [
              Flexible(
                child: Stack(
                  children: [
                    Positioned(
                      child: Material(
                        color: Colors.transparent,
                        type: MaterialType.circle,
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.grey,
                          child: ExtendedImage.network(
                            user?.photoURL,
                            fit: BoxFit.fill,
                            height: App.height * 0.08,
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
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Material(
                        color: Theme.of(context).accentColor,
                        type: MaterialType.circle,
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: App.width * 0.01,
                              vertical: App.width * 0.01,
                            ),
                            child: Icon(
                              Icons.photo_camera,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              HorizontalSpace(width: App.height * 0.02),
              //
              Expanded(
                flex: 2,
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
                    holder(AutoSizeText("${user?.email}", style: TextStyle(fontSize: 17.0))),
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
