part of 'playback_bloc.dart';

@freezed
@immutable
abstract class PlaybackState implements _$PlaybackState {
  static const String DEFAULT_PATH = "/";
  static const String DEFAULT_EXTENSION = "mp4";
  static const String TEST_VIDEO_NAME = "video";
  static const double ASPECT_RATIO = 16 / 8;
  static const double INITIAL_VOLUME = 1.0;

  const PlaybackState._();

  const factory PlaybackState({
    @Default(BetterPlayerDataSourceType.NETWORK) BetterPlayerDataSourceType sourceType,
    BetterPlayerController controller,
    @required SliderConfiguration sliderConfig,
    @nullable dynamic notifier,
    @Default(PlaybackState.DEFAULT_PATH) String path,
    @Default(PlaybackState.TEST_VIDEO_NAME) String fileName,
    @Default(PlaybackState.DEFAULT_EXTENSION) String extension,
    @Default(BetterPlayerEventType.PAUSE) BetterPlayerEventType playerEvent,
    @Default(Duration.zero) Duration buffered,
    @Default(PlaybackState.INITIAL_VOLUME) double volume,
    @Default(PlaybackState.INITIAL_VOLUME) double volumeBeforeMute,
    @Default(Duration.zero) Duration moment,
    @Default(false) bool autoPlay,
    @Default(false) bool willLoop,
    @Default(false) bool isFirstTouch,
    @Default(false) bool isInitialized,
    @Default(false) bool isLoading,
    @Default(false) bool isPlaying,
    @Default(false) bool isFinished,
    @Default(false) bool isSeeking,
    @Default(false) bool isMute,
    @Default(false) bool isBuffering,
    @Default(false) bool isFullscreen,
  }) = _PlaybackState;

  factory PlaybackState.init([BetterPlayerController controller]) => PlaybackState(
        controller: controller,
        sliderConfig: SliderConfiguration.dflt(),
      );
}

class SliderConfiguration {
  final double trackHeight;
  final Color activeTrackColor;
  final Color inactiveTrackColor;
  final Color thumbColor;
  final double enabledThumbRadius;
  final double disabledThumbRadius;
  final Color overlayColor;
  final double overlayRadius;
  final ShowValueIndicator showValueIndicator;
  final Color valueIndicatorColor;
  final Color valueIndicatorTextColor;

  factory SliderConfiguration.dflt() => SliderConfiguration._();

  SliderConfiguration._({
    this.trackHeight = 3.0,
    this.activeTrackColor = Colors.white,
    this.inactiveTrackColor = Colors.white38,
    this.thumbColor = Colors.white,
    this.enabledThumbRadius = 6.0,
    this.disabledThumbRadius = 4.0,
    Color overlayColor,
    this.overlayRadius = 12.0,
    this.showValueIndicator = ShowValueIndicator.always,
    Color valueIndicatorColor,
    this.valueIndicatorTextColor = Colors.black54,
  })  : overlayColor = overlayColor ?? Colors.white30,
        valueIndicatorColor = valueIndicatorColor ?? Colors.white.withOpacity(0.4);

  SliderConfiguration copyWith({
    double trackHeight,
    Color activeTrackColor,
    Color inactiveTrackColor,
    Color thumbColor,
    double enabledThumbRadius,
    double disabledThumbRadius,
    Color overlayColor,
    double overlayRadius,
    ShowValueIndicator showValueIndicator,
    Color valueIndicatorColor,
    Color valueIndicatorTextColor,
  }) {
    return SliderConfiguration._(
      trackHeight: trackHeight ?? this.trackHeight,
      activeTrackColor: activeTrackColor ?? this.activeTrackColor,
      inactiveTrackColor: inactiveTrackColor ?? this.inactiveTrackColor,
      thumbColor: thumbColor ?? this.thumbColor,
      enabledThumbRadius: enabledThumbRadius ?? this.enabledThumbRadius,
      disabledThumbRadius: disabledThumbRadius ?? this.disabledThumbRadius,
      overlayColor: overlayColor ?? this.overlayColor,
      overlayRadius: overlayRadius ?? this.overlayRadius,
      showValueIndicator: showValueIndicator ?? this.showValueIndicator,
      valueIndicatorColor: valueIndicatorColor ?? this.valueIndicatorColor,
      valueIndicatorTextColor: valueIndicatorTextColor ?? this.valueIndicatorTextColor,
    );
  }
}
