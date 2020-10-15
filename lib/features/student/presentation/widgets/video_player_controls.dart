import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/student/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';

class VideoPlayerControls extends StatefulWidget {
  const VideoPlayerControls({Key key}) : super(key: key);

  @override
  _VideoPlayerControlsState createState() => _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends State<VideoPlayerControls> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<PlaybackBloc, PlaybackState>(
      builder: (context, _) {
        // ignore: close_sinks
        final _bloc = context.bloc<PlaybackBloc>();

        return Stack(
          children: [
            Visibility(
              visible: !_bloc.state.isFirstTouch,
              child: Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 0,
                child: PlayerControls(
                  icon: Smartlets.play_button,
                  padding: App.width * 0.08,
                  iconSize: 45,
                  onTap: () => _bloc.add(PlaybackEvent.play(true)),
                ),
              ),
              replacement: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: PlayerControls(
                      icon: Smartlets.skip_button,
                      text: "- 10",
                      showText: true,
                      onTap: () {},
                      onDoubleTap: () => _bloc.add(PlaybackEvent.rewind()),
                    ),
                  ),
                  Expanded(
                    child: Visibility(
                      visible: !_bloc.state.isPlaying,
                      replacement: PlayerControls(
                        icon: Smartlets.pause_button,
                        padding: App.width * 0.01,
                        iconSize: 45,
                        onTap: () => _bloc.add(PlaybackEvent.pause()),
                      ),
                      child: PlayerControls(
                        icon: Smartlets.play_button,
                        padding: App.width * 0.01,
                        iconSize: 45,
                        onTap: () => _bloc.add(PlaybackEvent.play()),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PlayerControls(
                      icon: Smartlets.skip_button,
                      text: "+ 10",
                      reversed: true,
                      showText: true,
                      onTap: () {
                        _bloc.add(PlaybackEvent.toggleFullScreen());
                      },
                      onDoubleTap: () {
                        _bloc.add(PlaybackEvent.fastForward());
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: App.width,
                color: Colors.grey.withOpacity(0.6),
                child: Column(
                  children: [
                    Stack(
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
                            max: _bloc.state.notifier?.duration?.inSeconds?.toDouble() ?? double.infinity,
                            onChanged: (value) => _bloc.add(PlaybackEvent.seek(Duration(seconds: value.toInt()))),
                            label: "${Helpers.hhmmss(_bloc.state.moment)}",
                            onChangeStart: (value) {},
                            onChangeEnd: (value) {},
                          ),
                        ),
                      ],
                    ),
                    //
                    // Row(
                    //   children: [
                    //     Flexible(
                    //       child: Icon(
                    //         Smartlets.play_button,
                    //         color: Colors.white70,
                    //         size: 17.0,
                    //       ),
                    //     ),
                    //     //
                    //     Flexible(
                    //       child: Icon(
                    //         Smartlets.low_volume,
                    //         color: Colors.white70,
                    //         size: 19.0,
                    //       ),
                    //     ),
                    //     //
                    //     Flexible(
                    //       child: Icon(
                    //         Smartlets.fit_screen_icon,
                    //         color: Colors.white70,
                    //         size: 17.0,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class PlayerControls extends StatelessWidget {
  final double padding;
  final double iconSize;
  final IconData icon;
  final Color iconColor;
  final ShapeBorder shape;
  final String text;
  final bool showText;
  final bool reversed;
  final void Function() onTap;
  final void Function() onDoubleTap;

  PlayerControls({
    Key key,
    @required this.icon,
    this.iconSize = 30,
    this.text = "",
    this.showText = false,
    @required this.onTap,
    this.onDoubleTap,
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
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: shape,
        child: InkWell(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          child: Center(
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
          ),
        ),
      ),
    );
  }
}
