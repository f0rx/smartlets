import 'package:auto_route/auto_route.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class VideoFullscreenWidget extends StatefulWidget with AutoRouteWrapper {
  final PlaybackBloc bloc;
  final BuildContext context;

  const VideoFullscreenWidget({
    Key key,
    this.context,
    this.bloc,
  }) : super(key: key);

  @override
  _VideoFullscreenWidgetState createState() => _VideoFullscreenWidgetState();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _VideoFullscreenWidgetState extends State<VideoFullscreenWidget> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
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

    return BlocBuilder<PlaybackBloc, PlaybackState>(
      buildWhen: (p, c) => p.controller.isNull == c.controller.isNull,
      builder: (context, _) {
        if (_bloc.state.controller.isNull)
          return AspectRatio(
            aspectRatio: PlaybackState.ASPECT_RATIO,
            child: Container(
              color: Colors.grey.shade300,
              child: Center(
                child: AdaptiveCircularIndicator(
                  width: App.width * 0.08,
                  height: App.width * 0.08,
                  strokeWidth: 3.5,
                  radius: 14,
                ),
              ),
            ),
          );
        print("IS FULLSCREEN: ${_bloc.state.isFullscreen}");
        return AspectRatio(
          aspectRatio: PlaybackState.ASPECT_RATIO,
          child: BetterPlayer(
            controller: _bloc.state.controller,
          ),
        );
      },
    );
  }
}
