import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class MyProfileListTile<E extends dynamic> extends StatelessWidget {
  final E domain;

  const MyProfileListTile({Key key, this.domain}) : super(key: key);

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
                          child: CachedNetworkImage(
                            imageUrl: domain?.photoURL != null && !domain.photoURL.isEmpty
                                ? domain?.photoURL
                                : AppAssets.onlineAnonymous,
                            imageBuilder: (context, provider) => CircleAvatar(
                              backgroundImage: provider,
                              backgroundColor: Theme.of(context).accentColor,
                              radius: 35.0,
                            ),
                            fit: BoxFit.cover,
                            useOldImageOnUrlChange: true,
                            placeholder: (context, url) => Center(
                              child: CircularProgressBar.adaptive(
                                width: App.width * 0.07,
                                height: App.width * 0.07,
                                strokeWidth: 2.8,
                              ),
                            ),
                            placeholderFadeInDuration: Duration(milliseconds: 300),
                            errorWidget: (context, url, error) => CircleAvatar(
                              backgroundImage: AssetImage(AppAssets.anonymous),
                              backgroundColor: Theme.of(context).accentColor,
                              radius: 35.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Visibility(
                        visible: domain != null && !domain.photoURL.isEmpty,
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
                        "${domain?.displayName?.getOrEmpty}",
                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                      ),
                      condition: domain?.displayName?.getOrNull != null && domain.displayName.getOrEmpty.isNotEmpty,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.005),
                    //
                    holder(
                      AutoSizeText(
                        "${domain?.email?.getOrEmpty}",
                        style: TextStyle(fontSize: 17.0),
                      ),
                      condition: domain?.email?.getOrNull != null && domain.email.getOrEmpty.isNotEmpty,
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
