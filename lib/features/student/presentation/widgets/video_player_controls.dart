import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class VideoPlayerControls extends StatefulWidget {
  const VideoPlayerControls({Key key}) : super(key: key);

  @override
  _VideoPlayerControlsState createState() => _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends State<VideoPlayerControls> with AutomaticKeepAliveClientMixin {
  final EdgeInsets seekbarPadding = EdgeInsets.symmetric(horizontal: App.width * 0.02);

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<PlaybackBloc, PlaybackState>(
      builder: (context, _) {
        // ignore: close_sinks
        final _bloc = context.bloc<PlaybackBloc>();

        return HorizontalSpace(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: FlickAutoHideChild(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                  ),
                ),
              ),
              //
              Positioned.fill(
                child: FlickShowControlsAction(
                  behavior: HitTestBehavior.translucent,
                  child: FlickSeekVideoAction(
                    backwardSeekIcon: Icon(Smartlets.skip_button, size: 30),
                    forwardSeekIcon: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Icon(Smartlets.skip_button, size: 30),
                    ),
                    child: Center(
                      child: Visibility(
                        visible: _bloc.state.manager.flickVideoManager.nextVideoAutoPlayTimer == null,
                        replacement: FlickAutoPlayCircularProgress(
                          colors: FlickAutoPlayTimerProgressColors(
                            backgroundColor: Colors.white38,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        child: FlickAutoHideChild(
                          // showIfVideoNotInitialized: false,
                          child: FlickPlayToggle(
                            playChild: Icon(Smartlets.play_button),
                            pauseChild: Icon(Smartlets.pause_button),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: FlickAutoHideChild(
                  child: Container(
                    width: App.width,
                    color: Colors.grey.withOpacity(0.2),
                    child: Column(
                      children: [
                        Visibility(
                          visible: _bloc.state.manager.flickControlManager.isFullscreen,
                          child: Padding(
                            padding: seekbarPadding.copyWith(top: 5.0, left: App.width * 0.03),
                            child: Row(
                              children: <Widget>[
                                FlickCurrentPosition(),
                                Text(' / ', style: TextStyle(color: Colors.white)),
                                FlickTotalDuration(),
                              ],
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    SliderTheme(
                                      data: SliderThemeData(
                                        activeTrackColor: _bloc.state.sliderConfig.activeTrackColor.withOpacity(0.6),
                                        inactiveTrackColor: Colors.transparent,
                                        trackShape: RoundedRectSliderTrackShape(),
                                        trackHeight: _bloc.state.sliderConfig.trackHeight * 0.5,
                                        thumbColor: Colors.transparent,
                                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                                        overlayColor: Colors.transparent,
                                        overlayShape: RoundSliderOverlayShape(overlayRadius: _bloc.state.sliderConfig.overlayRadius),
                                        showValueIndicator: ShowValueIndicator.never,
                                      ),
                                      child: Slider.adaptive(
                                        value: _bloc.state.buffered.inSeconds.toDouble(),
                                        min: Duration.zero.inSeconds.toDouble(),
                                        max: _bloc.state.notifier?.duration?.inSeconds?.toDouble() ?? double.infinity,
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    SliderTheme(
                                      data: SliderThemeData(
                                        activeTrackColor: _bloc.state.sliderConfig.activeTrackColor,
                                        inactiveTrackColor: _bloc.state.sliderConfig.inactiveTrackColor,
                                        trackShape: RoundedRectSliderTrackShape(),
                                        trackHeight: _bloc.state.sliderConfig.trackHeight,
                                        thumbColor: _bloc.state.sliderConfig.thumbColor,
                                        thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: _bloc.state.sliderConfig.enabledThumbRadius,
                                          disabledThumbRadius: _bloc.state.sliderConfig.disabledThumbRadius,
                                        ),
                                        overlayColor: _bloc.state.sliderConfig.overlayColor,
                                        overlayShape: RoundSliderOverlayShape(overlayRadius: _bloc.state.sliderConfig.overlayRadius),
                                        showValueIndicator: _bloc.state.sliderConfig.showValueIndicator,
                                        valueIndicatorColor: _bloc.state.sliderConfig.valueIndicatorColor,
                                        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                        valueIndicatorTextStyle: TextStyle(color: _bloc.state.sliderConfig.valueIndicatorTextColor),
                                      ),
                                      child: Slider.adaptive(
                                        value: _bloc.state.moment.inSeconds.toDouble(),
                                        min: Duration.zero.inSeconds.toDouble(),
                                        max: _bloc.state.playbackDuration.inSeconds.toDouble(),
                                        onChanged: (value) => _bloc.add(PlaybackEvent.seek(Duration(seconds: value.toInt()))),
                                        label: "${Helpers.hhmmss(_bloc.state.moment)}",
                                        onChangeStart: (value) {},
                                        onChangeEnd: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //
                              Visibility(
                                visible: !_bloc.state.manager.flickControlManager.isFullscreen,
                                child: FlickLeftDuration(),
                              ),
                            ],
                          ),
                        ),
                        //
                        Padding(
                          padding: seekbarPadding.copyWith(bottom: App.height * 0.008),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Flexible(child: FlickPlayToggle(size: 25)),
                                    //
                                    HorizontalSpace(width: 10.0),
                                    //
                                    Flexible(child: FlickSoundToggle(size: 25)),
                                  ],
                                ),
                              ),
                              //
                              Spacer(),
                              //
                              // TODO: Try to tweak the SafeArea on Enter Fullscreen
                              Flexible(child: FlickFullScreenToggle(size: 25)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SeekControls extends StatelessWidget {
  final double padding;
  final double iconSize;
  final IconData icon;
  final Color iconColor;
  final ShapeBorder shape;
  final String text;
  final bool showText;
  final bool reversed;

  SeekControls({
    Key key,
    @required this.icon,
    this.iconSize = 30,
    this.text = "",
    this.showText = false,
    ShapeBorder shape,
    double padding,
    Color iconColor,
    this.reversed = false,
  })  : shape = shape ?? CircleBorder(),
        padding = padding ?? App.width * 0.07,
        iconColor = iconColor ?? Colors.white.withOpacity(0.8),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: reversed,
            replacement: Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
          //
          Visibility(
            visible: showText,
            child: AutoSizeText(
              text,
              maxLines: 1,
              minFontSize: 18,
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
