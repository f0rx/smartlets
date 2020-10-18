import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CourseCardWidget extends StatelessWidget {
  final Course course;
  final double height;
  final double radius;
  final double imageRadius;
  final double progress;
  final String image;
  final bool showProgress;
  final bool showRating;

  CourseCardWidget({
    Key key,
    @required this.course,
    @required this.progress,
    double height,
    this.radius = 16.0,
    this.imageRadius = 8.0,
    @required this.image,
    this.showProgress = false,
    this.showRating = false,
  })  : height = height ?? App.height * 0.13,
        super(key: key);

  Image _image(String image, [bool isNetwork = false]) {
    if (image != null && isNetwork) return Image.network(image);
    return Image.asset("$image", fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      type: MaterialType.card,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.fromHex("#EBECED"),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: InkWell(
        onTap: () => ExtendedNavigator.root.pushCourseDetailScreen(course: course),
        splashColor: Colors.grey.shade300,
        child: SizedBox(
          height: height,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: App.height * 0.012, horizontal: App.height * 0.012),
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(imageRadius),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: _image(image),
                  ),
                ),
                //
                HorizontalSpace(width: App.height * 0.015),
                //
                Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 2,
                              child: AutoSizeText(
                                "${course.title.getOrCrash}",
                                style: TextStyle(fontWeight: FontWeight.w600),
                                maxLines: 2,
                                minFontSize: 17.0,
                                softWrap: true,
                                wrapWords: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            //
                            Flexible(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Visibility(
                                    visible: course.duration.inHours > 0,
                                    child: AutoSizeText.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: "${course.duration.inHours}",
                                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                                        ),
                                        TextSpan(text: " "),
                                        TextSpan(
                                          text: "hour".pluralize(course.duration.inHours),
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ]),
                                      maxLines: 1,
                                      minFontSize: 13.0,
                                    ),
                                  ),
                                  //
                                  AutoSizeText(" "),
                                  //
                                  Visibility(
                                    visible: course.duration.inMinutes.remainder(60) > 0,
                                    child: AutoSizeText.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: "${course.duration.inMinutes.remainder(60)}",
                                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                                        ),
                                        TextSpan(text: " "),
                                        TextSpan(
                                          text: "minute".pluralize(course.duration.inMinutes.remainder(60)),
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ]),
                                      maxLines: 1,
                                      minFontSize: 13.0,
                                    ),
                                  ),
                                  //
                                  AutoSizeText(
                                    "  \u2022  ",
                                    minFontSize: 20,
                                    softWrap: true,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).accentColor,
                                    ),
                                  ),
                                  //
                                  AutoSizeText.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                        text: "${course.lessons}",
                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                                      ),
                                      TextSpan(text: " "),
                                      TextSpan(
                                        text: "lessons",
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                    ]),
                                    maxLines: 1,
                                    minFontSize: 13.0,
                                  ),
                                ],
                              ),
                            ),
                            //
                            Flexible(
                              child: Visibility(
                                visible: showRating,
                                child: RatingBarIndicator(
                                  rating: course.rating.getOrCrash,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: App.height * 0.02,
                                  direction: Axis.horizontal,
                                ),
                              ),
                            ),
                            //
                            Flexible(
                              child: Visibility(
                                visible: showProgress,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50.0),
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: LinearProgressIndicator(value: progress),
                                      ),
                                    ),
                                    HorizontalSpace(width: 12.0),
                                    AutoSizeText("${progress * 100}%"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Icon(Icons.arrow_forward_ios_rounded, size: 18.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
