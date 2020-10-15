import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/router/export.dart';

class CourseDetailScreen extends StatelessWidget with AutoRouteWrapper {
  static const String VID_URL =
      "https://r3---sn-hp57ynee.googlevideo.com/videoplayback?expire=1565481501&ei=vQVPXa7rJcOH4QTBopP4DA&ip=45.77.92.194&id=o-AB4F54uNgrijDg6tEqPZRcYXU_OWUGeBzvv8Xf46o6KT&itag=18&source=youtube&requiressl=yes&mm=31%2C29&mn=sn-hp57ynee%2Csn-hp57knss&ms=au%2Crdu&mv=m&mvi=2&pl=22&initcwndbps=612500&mime=video%2Fmp4&gir=yes&clen=18757811&ratebypass=yes&dur=241.650&lmt=1543881147323153&mt=1565459779&fvip=1&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AHylml4wRQIge4yGBuw7K6rZb4kOkT2rYKOpDkSBEsKMpJi3qO-wdskCIQDmdzxtWRYvI26VEbsdoiVZe7iLJTwpk1V6kbS4pHBImQ%3D%3D&sig=ALgxI2wwRAIgGU7O5NadR_z7YdLtT_SIzvjPnma6cKEaLDN8mQy-2kkCIGbC9HIgJ_EQ5DxVlE0kc0FjEyhp6X_m1ACNSs0CURnL";
  final Course course;

  CourseDetailScreen({Key key, @required this.course}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PlaybackBloc>()
        // ..add(PlaybackEvent.setupVideoPlayer("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")),
        // ..add(PlaybackEvent.setupVideoPlayer(VID_URL)),
        ..add(PlaybackEvent.initializeLocalVideo(_)),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ExtendedNavigator(
      navigatorKey: GlobalKey<NavigatorState>(),
      router: CourseDetailScreenRouter(),
      initialRouteArgs: CourseDetailIndexPageArguments(course: course),
    );
  }
}
