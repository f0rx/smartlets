import 'package:auto_route/auto_route.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/features/student/presentation/widgets/student_widgets.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class VideoWidget extends StatefulWidget with AutoRouteWrapper {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _VideoWidgetState extends State<VideoWidget> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  // ignore: close_sinks
  PlaybackBloc _bloc;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    _bloc ??= context.bloc<PlaybackBloc>();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AspectRatio(
      aspectRatio: PlaybackState.ASPECT_RATIO,
      child: BlocBuilder<PlaybackBloc, PlaybackState>(
        buildWhen: (p, c) => p.manager.isNull == c.manager.isNull,
        builder: (context, _) {
          if (_bloc.state.manager.isNull)
            return Container(
              color: Colors.grey.shade200,
              child: Center(
                child: AdaptiveCircularIndicator(
                  width: App.width * 0.08,
                  height: App.width * 0.08,
                  strokeWidth: 3.5,
                  radius: 14,
                ),
              ),
            );

          return VisibilityDetector(
            key: ObjectKey(_bloc.state.manager),
            onVisibilityChanged: (visibility) {
              if (visibility.visibleFraction == 0 && this.mounted) {
                _bloc.state.manager.flickControlManager.autoPause();
              } else if (visibility.visibleFraction == 1) {
                _bloc.state.manager.flickControlManager.autoResume();
              }
            },
            child: Container(
              child: FlickVideoPlayer(
                flickManager: _bloc.state.manager,
                flickVideoWithControls: FlickVideoWithControls(
                  controls: VideoPlayerControls(),
                  willVideoPlayerControllerChange: true,
                  videoFit: BoxFit.cover,
                  iconThemeData: IconThemeData(color: Colors.white, size: 35),
                  // TODO: Build Error Fallback
                  // playerErrorFallback: Container(child: Text("Controller has errors")),
                  playerLoadingFallback: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    color: Colors.grey.shade500,
                    child: Center(
                      child: AdaptiveCircularIndicator(
                        width: App.width * 0.08,
                        height: App.width * 0.08,
                        strokeWidth: 3.5,
                        radius: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.state.manager.dispose();
    super.dispose();
  }
}
