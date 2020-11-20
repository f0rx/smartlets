import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/router/export.dart';
import 'package:smartlets/utils/utils.dart';

class CourseDetailScreen extends StatelessWidget with AutoRouteWrapper {
  // Just for DEV purposes
  static const String VID_URL =
      "https://r1---sn-huoob-avnl.googlevideo.com/videoplayback?expire=1604466315&ei=K-KhX7jBCriLmLAP_Pes4A4&ip=197.210.29.86&id=o-ABCtdyOOaYF_1caupslagDr4ko2AFfzojS2xn7LAaLDd&itag=18&source=youtube&requiressl=yes&mh=tU&mm=31%2C29&mn=sn-huoob-avnl%2Csn-avn7ln7l&ms=au%2Crdu&mv=m&mvi=1&pl=24&initcwndbps=140000&vprv=1&mime=video%2Fmp4&ns=5fEB2zd7Y1Cg37wFZXC2MGYF&gir=yes&clen=1025549&ratebypass=yes&dur=21.849&lmt=1428145614486799&mt=1604444563&fvip=1&n=neNsQ06ZZm1DQmna&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAONdA21qGELi4eqNabfn_GMg-ci-c1x51kVDqn1ol6bBAiEA01-QPoWR9Ma2kTYnIelYCWGPY-Y70C_iH5g5I3kZyqk%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhANIPIvPfEVlJFO8A_Rs9NS4PhUFxpVaeAqTEbrWBBG3FAiEAtjlJBdCJ8xUox88drrKuCdzdYzOXAoAWwyayIzrYcmg%3D";
  static const String DRACARYS = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4";
  static const String DOT_NET_VID =
      "https://firebasestorage.googleapis.com/v0/b/smartlets-x.appspot.com/o/dev%2Ftest%2Ftestvideo_1.mp4?alt=media&token=94e887f7-0fb1-4ad7-a342-63d307965070";

  final Course course;

  CourseDetailScreen({Key key, @required this.course}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PlaybackBloc>()
        ..saveLocalVideo()
        ..add(PlaybackEvent.setupVideoPlayer(DOT_NET_VID)),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await App.forceAppUpdate();
        return Future.value(true);
      },
      child: ExtendedNavigator(
        navigatorKey: GlobalKey<NavigatorState>(),
        router: CourseDetailScreenRouter(),
        initialRouteArgs: CourseDetailIndexPageArguments(course: course),
      ),
    );
  }
}
