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
                        type: MaterialType.card,
                        shape: RoundedRectangleBorder(),
                        borderOnForeground: false,
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.grey,
                          borderRadius: BorderRadius.circular(100.0),
                          child: ExtendedImage.network(
                            user?.photoURL ?? AppAssets.onlineAnonymous,
                            fit: BoxFit.fill,
                            height: App.height * 0.08,
                            shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(100.0),
                            clipBehavior: Clip.antiAlias,
                            handleLoadingProgress: true,
                            retries: 999899,
                            isAntiAlias: true,
                            loadStateChanged: (state) {
                              switch (state.extendedImageLoadState) {
                                case LoadState.loading:
                                  return ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: App.width * 0.1,
                                      maxHeight: App.width * 0.1,
                                    ),
                                    child: Center(
                                      child: CircularProgressBar.adaptive(
                                        width: App.width * 0.07,
                                        height: App.width * 0.07,
                                        strokeWidth: 2.5,
                                      ),
                                    ),
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
                      child: Visibility(
                        // visible: state.student?.photoURL != null && !state.student.isNullOrBlank,
                        child: Material(
                          color: Theme.of(context).accentColor,
                          type: MaterialType.circle,
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: App.width * 0.015,
                                vertical: App.width * 0.015,
                              ),
                              child: Icon(
                                Icons.photo_camera,
                                color: Colors.white,
                                size: 16.0,
                              ),
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
                      AutoSizeText(
                        "${user?.displayName}",
                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                      ),
                      condition: user?.displayName != null && user.displayName.isNotEmpty,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.005),
                    //
                    holder(
                      AutoSizeText(
                        "${user?.email}",
                        style: TextStyle(fontSize: 17.0),
                      ),
                      condition: user?.email != null && user.email.isNotEmpty,
                    ),
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
