part of 'playback_bloc.dart';

@freezed
@immutable
abstract class PlaybackEvent with _$PlaybackEvent {
  const factory PlaybackEvent.setupVideoPlayer(
    String url, {
    @nullable FlickManager controller,
  }) = _SetupVideoController;

  const factory PlaybackEvent.play([bool firstTouch]) = _PlayVideo;

  const factory PlaybackEvent.pause() = _PauseVideo;

  const factory PlaybackEvent.changePath(String value) = _ChangePath;

  const factory PlaybackEvent.changeVolume(double volume) = _SetVolume;

  const factory PlaybackEvent.mute() = _MuteVideo;

  const factory PlaybackEvent.unMute() = _UnMuteVideo;

  const factory PlaybackEvent.enterFullScreen() = _EnterFullScreen;

  const factory PlaybackEvent.exitFullScreen() = _ExitFullScreen;

  const factory PlaybackEvent.changeSliderSize({
    SliderConfiguration config,
  }) = _ChangeSliderComponentSize;

  const factory PlaybackEvent.toggleFullScreen() = _ToggleFullScreen;

  const factory PlaybackEvent.refreshPlayer([PlaybackState state]) = _RefreshVideoPlayer;

  const factory PlaybackEvent.fastForward([@Default(Duration(seconds: 10)) Duration moment]) = _FastForwardVideo;

  const factory PlaybackEvent.seek([@Default(Duration(seconds: 4)) Duration progress]) = _Seek;

  const factory PlaybackEvent.rewind([@Default(Duration(seconds: 10)) Duration moment]) = _RewindVideo;
}
