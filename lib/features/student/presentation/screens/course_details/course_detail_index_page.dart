import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/features/student/presentation/screens/course_details/video_fullscreen_widget.dart';
import 'package:smartlets/utils/smartlets_icons.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CourseDetailIndexPage extends StatefulWidget with AutoRouteWrapper {
  final Course course;

  CourseDetailIndexPage({Key key, @required this.course}) : super(key: key);

  @override
  _CourseDetailIndexPageState createState() => _CourseDetailIndexPageState();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _CourseDetailIndexPageState extends State<CourseDetailIndexPage> with AutomaticKeepAliveClientMixin {
  final ScrollController controller = ScrollController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: BlocBuilder<PlaybackBloc, PlaybackState>(
        buildWhen: (p, c) => p.isFullscreen != c.isFullscreen,
        builder: (context, state) => Visibility(
          visible: !context.bloc<PlaybackBloc>().state.isFullscreen,
          // replacement: VideoFullscreenWidget(),
          child: SafeArea(
            left: true,
            right: true,
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                        child: VerticalSpace(
                          height: App.height * 0.18,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: AutoSizeText(
                                  "Design",
                                  minFontSize: 18.0,
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: AutoSizeText(
                                  widget.course.title.getOrCrash,
                                  minFontSize: 24,
                                  maxLines: 3,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  wrapWords: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Smartlets.clock_icon, size: 20.0, color: AppColors.fromHex("#6E798C")),
                                        //
                                        AutoSizeText("  "),
                                        //
                                        Visibility(
                                          visible: widget.course.duration.inHours > 0,
                                          child: AutoSizeText.rich(
                                            TextSpan(children: [
                                              TextSpan(
                                                text: "${widget.course.duration.inHours}",
                                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                                              ),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                text: "hour".pluralize(widget.course.duration.inHours),
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ], style: TextStyle(color: AppColors.fromHex("#6E798C"))),
                                            maxLines: 1,
                                            minFontSize: 16.0,
                                          ),
                                        ),
                                        //
                                        AutoSizeText(" "),
                                        //
                                        Visibility(
                                          visible:
                                              widget.course.duration.inHours <= 0 && widget.course.duration.inMinutes.remainder(60) > 0,
                                          child: AutoSizeText.rich(
                                            TextSpan(children: [
                                              TextSpan(
                                                text: "${widget.course.duration.inMinutes.remainder(60)}",
                                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                                              ),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                text: "minute".pluralize(widget.course.duration.inMinutes.remainder(60)),
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ], style: TextStyle(color: AppColors.fromHex("#6E798C"))),
                                            maxLines: 1,
                                            minFontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //
                                    Row(
                                      children: [
                                        Icon(Smartlets.lesson_icon, size: 20.0, color: AppColors.fromHex("#6E798C")),
                                        //
                                        AutoSizeText("  "),
                                        //
                                        AutoSizeText.rich(
                                          TextSpan(children: [
                                            TextSpan(
                                              text: "${widget.course.lessons}",
                                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                                            ),
                                            TextSpan(text: " "),
                                            TextSpan(
                                              text: "lessons",
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                          ], style: TextStyle(color: AppColors.fromHex("#6E798C"))),
                                          maxLines: 1,
                                          minFontSize: 16.0,
                                        ),
                                      ],
                                    ),
                                    //
                                    Row(
                                      children: [
                                        Icon(Smartlets.account, color: AppColors.fromHex("#6E798C")),
                                        //
                                        // TODO: Use correct figure here
                                        AutoSizeText(
                                          "500",
                                          minFontSize: 16.0,
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * .01),
                      //
                      VideoFullscreenWidget(),
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
