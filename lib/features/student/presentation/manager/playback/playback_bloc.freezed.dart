// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'playback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlaybackEventTearOff {
  const _$PlaybackEventTearOff();

// ignore: unused_element
  _SetupVideoController setupVideoPlayer(String url,
      {@nullable FlickManager controller}) {
    return _SetupVideoController(
      url,
      controller: controller,
    );
  }

// ignore: unused_element
  _PlayVideo play([bool firstTouch]) {
    return _PlayVideo(
      firstTouch,
    );
  }

// ignore: unused_element
  _PauseVideo pause() {
    return const _PauseVideo();
  }

// ignore: unused_element
  _ChangePath changePath(String value) {
    return _ChangePath(
      value,
    );
  }

// ignore: unused_element
  _SetVolume changeVolume(double volume) {
    return _SetVolume(
      volume,
    );
  }

// ignore: unused_element
  _MuteVideo mute() {
    return const _MuteVideo();
  }

// ignore: unused_element
  _UnMuteVideo unMute() {
    return const _UnMuteVideo();
  }

// ignore: unused_element
  _EnterFullScreen enterFullScreen() {
    return const _EnterFullScreen();
  }

// ignore: unused_element
  _ExitFullScreen exitFullScreen() {
    return const _ExitFullScreen();
  }

// ignore: unused_element
  _ChangeSliderComponentSize changeSliderSize({SliderConfiguration config}) {
    return _ChangeSliderComponentSize(
      config: config,
    );
  }

// ignore: unused_element
  _ToggleFullScreen toggleFullScreen() {
    return const _ToggleFullScreen();
  }

// ignore: unused_element
  _RefreshVideoPlayer refreshPlayer([PlaybackState state]) {
    return _RefreshVideoPlayer(
      state,
    );
  }

// ignore: unused_element
  _FastForwardVideo fastForward(
      [Duration moment = const Duration(seconds: 10)]) {
    return _FastForwardVideo(
      moment,
    );
  }

// ignore: unused_element
  _Seek seek([Duration progress = const Duration(seconds: 4)]) {
    return _Seek(
      progress,
    );
  }

// ignore: unused_element
  _RewindVideo rewind([Duration moment = const Duration(seconds: 10)]) {
    return _RewindVideo(
      moment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlaybackEvent = _$PlaybackEventTearOff();

/// @nodoc
mixin _$PlaybackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PlaybackEventCopyWith<$Res> {
  factory $PlaybackEventCopyWith(
          PlaybackEvent value, $Res Function(PlaybackEvent) then) =
      _$PlaybackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaybackEventCopyWithImpl<$Res>
    implements $PlaybackEventCopyWith<$Res> {
  _$PlaybackEventCopyWithImpl(this._value, this._then);

  final PlaybackEvent _value;
  // ignore: unused_field
  final $Res Function(PlaybackEvent) _then;
}

/// @nodoc
abstract class _$SetupVideoControllerCopyWith<$Res> {
  factory _$SetupVideoControllerCopyWith(_SetupVideoController value,
          $Res Function(_SetupVideoController) then) =
      __$SetupVideoControllerCopyWithImpl<$Res>;
  $Res call({String url, @nullable FlickManager controller});
}

/// @nodoc
class __$SetupVideoControllerCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$SetupVideoControllerCopyWith<$Res> {
  __$SetupVideoControllerCopyWithImpl(
      _SetupVideoController _value, $Res Function(_SetupVideoController) _then)
      : super(_value, (v) => _then(v as _SetupVideoController));

  @override
  _SetupVideoController get _value => super._value as _SetupVideoController;

  @override
  $Res call({
    Object url = freezed,
    Object controller = freezed,
  }) {
    return _then(_SetupVideoController(
      url == freezed ? _value.url : url as String,
      controller: controller == freezed
          ? _value.controller
          : controller as FlickManager,
    ));
  }
}

/// @nodoc
class _$_SetupVideoController
    with DiagnosticableTreeMixin
    implements _SetupVideoController {
  const _$_SetupVideoController(this.url, {@nullable this.controller})
      : assert(url != null);

  @override
  final String url;
  @override
  @nullable
  final FlickManager controller;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.setupVideoPlayer(url: $url, controller: $controller)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.setupVideoPlayer'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetupVideoController &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(controller);

  @override
  _$SetupVideoControllerCopyWith<_SetupVideoController> get copyWith =>
      __$SetupVideoControllerCopyWithImpl<_SetupVideoController>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return setupVideoPlayer(url, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setupVideoPlayer != null) {
      return setupVideoPlayer(url, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return setupVideoPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setupVideoPlayer != null) {
      return setupVideoPlayer(this);
    }
    return orElse();
  }
}

abstract class _SetupVideoController implements PlaybackEvent {
  const factory _SetupVideoController(String url,
      {@nullable FlickManager controller}) = _$_SetupVideoController;

  String get url;
  @nullable
  FlickManager get controller;
  _$SetupVideoControllerCopyWith<_SetupVideoController> get copyWith;
}

/// @nodoc
abstract class _$PlayVideoCopyWith<$Res> {
  factory _$PlayVideoCopyWith(
          _PlayVideo value, $Res Function(_PlayVideo) then) =
      __$PlayVideoCopyWithImpl<$Res>;
  $Res call({bool firstTouch});
}

/// @nodoc
class __$PlayVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$PlayVideoCopyWith<$Res> {
  __$PlayVideoCopyWithImpl(_PlayVideo _value, $Res Function(_PlayVideo) _then)
      : super(_value, (v) => _then(v as _PlayVideo));

  @override
  _PlayVideo get _value => super._value as _PlayVideo;

  @override
  $Res call({
    Object firstTouch = freezed,
  }) {
    return _then(_PlayVideo(
      firstTouch == freezed ? _value.firstTouch : firstTouch as bool,
    ));
  }
}

/// @nodoc
class _$_PlayVideo with DiagnosticableTreeMixin implements _PlayVideo {
  const _$_PlayVideo([this.firstTouch]);

  @override
  final bool firstTouch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.play(firstTouch: $firstTouch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.play'))
      ..add(DiagnosticsProperty('firstTouch', firstTouch));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayVideo &&
            (identical(other.firstTouch, firstTouch) ||
                const DeepCollectionEquality()
                    .equals(other.firstTouch, firstTouch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstTouch);

  @override
  _$PlayVideoCopyWith<_PlayVideo> get copyWith =>
      __$PlayVideoCopyWithImpl<_PlayVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return play(firstTouch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (play != null) {
      return play(firstTouch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _PlayVideo implements PlaybackEvent {
  const factory _PlayVideo([bool firstTouch]) = _$_PlayVideo;

  bool get firstTouch;
  _$PlayVideoCopyWith<_PlayVideo> get copyWith;
}

/// @nodoc
abstract class _$PauseVideoCopyWith<$Res> {
  factory _$PauseVideoCopyWith(
          _PauseVideo value, $Res Function(_PauseVideo) then) =
      __$PauseVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$PauseVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$PauseVideoCopyWith<$Res> {
  __$PauseVideoCopyWithImpl(
      _PauseVideo _value, $Res Function(_PauseVideo) _then)
      : super(_value, (v) => _then(v as _PauseVideo));

  @override
  _PauseVideo get _value => super._value as _PauseVideo;
}

/// @nodoc
class _$_PauseVideo with DiagnosticableTreeMixin implements _PauseVideo {
  const _$_PauseVideo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.pause()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PlaybackEvent.pause'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PauseVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _PauseVideo implements PlaybackEvent {
  const factory _PauseVideo() = _$_PauseVideo;
}

/// @nodoc
abstract class _$ChangePathCopyWith<$Res> {
  factory _$ChangePathCopyWith(
          _ChangePath value, $Res Function(_ChangePath) then) =
      __$ChangePathCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ChangePathCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$ChangePathCopyWith<$Res> {
  __$ChangePathCopyWithImpl(
      _ChangePath _value, $Res Function(_ChangePath) _then)
      : super(_value, (v) => _then(v as _ChangePath));

  @override
  _ChangePath get _value => super._value as _ChangePath;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_ChangePath(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_ChangePath with DiagnosticableTreeMixin implements _ChangePath {
  const _$_ChangePath(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.changePath(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.changePath'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePath &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$ChangePathCopyWith<_ChangePath> get copyWith =>
      __$ChangePathCopyWithImpl<_ChangePath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changePath(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePath != null) {
      return changePath(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changePath(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePath != null) {
      return changePath(this);
    }
    return orElse();
  }
}

abstract class _ChangePath implements PlaybackEvent {
  const factory _ChangePath(String value) = _$_ChangePath;

  String get value;
  _$ChangePathCopyWith<_ChangePath> get copyWith;
}

/// @nodoc
abstract class _$SetVolumeCopyWith<$Res> {
  factory _$SetVolumeCopyWith(
          _SetVolume value, $Res Function(_SetVolume) then) =
      __$SetVolumeCopyWithImpl<$Res>;
  $Res call({double volume});
}

/// @nodoc
class __$SetVolumeCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$SetVolumeCopyWith<$Res> {
  __$SetVolumeCopyWithImpl(_SetVolume _value, $Res Function(_SetVolume) _then)
      : super(_value, (v) => _then(v as _SetVolume));

  @override
  _SetVolume get _value => super._value as _SetVolume;

  @override
  $Res call({
    Object volume = freezed,
  }) {
    return _then(_SetVolume(
      volume == freezed ? _value.volume : volume as double,
    ));
  }
}

/// @nodoc
class _$_SetVolume with DiagnosticableTreeMixin implements _SetVolume {
  const _$_SetVolume(this.volume) : assert(volume != null);

  @override
  final double volume;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.changeVolume(volume: $volume)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.changeVolume'))
      ..add(DiagnosticsProperty('volume', volume));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetVolume &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(volume);

  @override
  _$SetVolumeCopyWith<_SetVolume> get copyWith =>
      __$SetVolumeCopyWithImpl<_SetVolume>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changeVolume(volume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeVolume != null) {
      return changeVolume(volume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changeVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeVolume != null) {
      return changeVolume(this);
    }
    return orElse();
  }
}

abstract class _SetVolume implements PlaybackEvent {
  const factory _SetVolume(double volume) = _$_SetVolume;

  double get volume;
  _$SetVolumeCopyWith<_SetVolume> get copyWith;
}

/// @nodoc
abstract class _$MuteVideoCopyWith<$Res> {
  factory _$MuteVideoCopyWith(
          _MuteVideo value, $Res Function(_MuteVideo) then) =
      __$MuteVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$MuteVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$MuteVideoCopyWith<$Res> {
  __$MuteVideoCopyWithImpl(_MuteVideo _value, $Res Function(_MuteVideo) _then)
      : super(_value, (v) => _then(v as _MuteVideo));

  @override
  _MuteVideo get _value => super._value as _MuteVideo;
}

/// @nodoc
class _$_MuteVideo with DiagnosticableTreeMixin implements _MuteVideo {
  const _$_MuteVideo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.mute()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PlaybackEvent.mute'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MuteVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return mute();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mute != null) {
      return mute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return mute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mute != null) {
      return mute(this);
    }
    return orElse();
  }
}

abstract class _MuteVideo implements PlaybackEvent {
  const factory _MuteVideo() = _$_MuteVideo;
}

/// @nodoc
abstract class _$UnMuteVideoCopyWith<$Res> {
  factory _$UnMuteVideoCopyWith(
          _UnMuteVideo value, $Res Function(_UnMuteVideo) then) =
      __$UnMuteVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnMuteVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$UnMuteVideoCopyWith<$Res> {
  __$UnMuteVideoCopyWithImpl(
      _UnMuteVideo _value, $Res Function(_UnMuteVideo) _then)
      : super(_value, (v) => _then(v as _UnMuteVideo));

  @override
  _UnMuteVideo get _value => super._value as _UnMuteVideo;
}

/// @nodoc
class _$_UnMuteVideo with DiagnosticableTreeMixin implements _UnMuteVideo {
  const _$_UnMuteVideo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.unMute()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PlaybackEvent.unMute'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnMuteVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return unMute();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unMute != null) {
      return unMute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return unMute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unMute != null) {
      return unMute(this);
    }
    return orElse();
  }
}

abstract class _UnMuteVideo implements PlaybackEvent {
  const factory _UnMuteVideo() = _$_UnMuteVideo;
}

/// @nodoc
abstract class _$EnterFullScreenCopyWith<$Res> {
  factory _$EnterFullScreenCopyWith(
          _EnterFullScreen value, $Res Function(_EnterFullScreen) then) =
      __$EnterFullScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$EnterFullScreenCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$EnterFullScreenCopyWith<$Res> {
  __$EnterFullScreenCopyWithImpl(
      _EnterFullScreen _value, $Res Function(_EnterFullScreen) _then)
      : super(_value, (v) => _then(v as _EnterFullScreen));

  @override
  _EnterFullScreen get _value => super._value as _EnterFullScreen;
}

/// @nodoc
class _$_EnterFullScreen
    with DiagnosticableTreeMixin
    implements _EnterFullScreen {
  const _$_EnterFullScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.enterFullScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.enterFullScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EnterFullScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return enterFullScreen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (enterFullScreen != null) {
      return enterFullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return enterFullScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (enterFullScreen != null) {
      return enterFullScreen(this);
    }
    return orElse();
  }
}

abstract class _EnterFullScreen implements PlaybackEvent {
  const factory _EnterFullScreen() = _$_EnterFullScreen;
}

/// @nodoc
abstract class _$ExitFullScreenCopyWith<$Res> {
  factory _$ExitFullScreenCopyWith(
          _ExitFullScreen value, $Res Function(_ExitFullScreen) then) =
      __$ExitFullScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExitFullScreenCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$ExitFullScreenCopyWith<$Res> {
  __$ExitFullScreenCopyWithImpl(
      _ExitFullScreen _value, $Res Function(_ExitFullScreen) _then)
      : super(_value, (v) => _then(v as _ExitFullScreen));

  @override
  _ExitFullScreen get _value => super._value as _ExitFullScreen;
}

/// @nodoc
class _$_ExitFullScreen
    with DiagnosticableTreeMixin
    implements _ExitFullScreen {
  const _$_ExitFullScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.exitFullScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.exitFullScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExitFullScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return exitFullScreen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exitFullScreen != null) {
      return exitFullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return exitFullScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exitFullScreen != null) {
      return exitFullScreen(this);
    }
    return orElse();
  }
}

abstract class _ExitFullScreen implements PlaybackEvent {
  const factory _ExitFullScreen() = _$_ExitFullScreen;
}

/// @nodoc
abstract class _$ChangeSliderComponentSizeCopyWith<$Res> {
  factory _$ChangeSliderComponentSizeCopyWith(_ChangeSliderComponentSize value,
          $Res Function(_ChangeSliderComponentSize) then) =
      __$ChangeSliderComponentSizeCopyWithImpl<$Res>;
  $Res call({SliderConfiguration config});
}

/// @nodoc
class __$ChangeSliderComponentSizeCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$ChangeSliderComponentSizeCopyWith<$Res> {
  __$ChangeSliderComponentSizeCopyWithImpl(_ChangeSliderComponentSize _value,
      $Res Function(_ChangeSliderComponentSize) _then)
      : super(_value, (v) => _then(v as _ChangeSliderComponentSize));

  @override
  _ChangeSliderComponentSize get _value =>
      super._value as _ChangeSliderComponentSize;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(_ChangeSliderComponentSize(
      config: config == freezed ? _value.config : config as SliderConfiguration,
    ));
  }
}

/// @nodoc
class _$_ChangeSliderComponentSize
    with DiagnosticableTreeMixin
    implements _ChangeSliderComponentSize {
  const _$_ChangeSliderComponentSize({this.config});

  @override
  final SliderConfiguration config;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.changeSliderSize(config: $config)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.changeSliderSize'))
      ..add(DiagnosticsProperty('config', config));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeSliderComponentSize &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @override
  _$ChangeSliderComponentSizeCopyWith<_ChangeSliderComponentSize>
      get copyWith =>
          __$ChangeSliderComponentSizeCopyWithImpl<_ChangeSliderComponentSize>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changeSliderSize(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSliderSize != null) {
      return changeSliderSize(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changeSliderSize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSliderSize != null) {
      return changeSliderSize(this);
    }
    return orElse();
  }
}

abstract class _ChangeSliderComponentSize implements PlaybackEvent {
  const factory _ChangeSliderComponentSize({SliderConfiguration config}) =
      _$_ChangeSliderComponentSize;

  SliderConfiguration get config;
  _$ChangeSliderComponentSizeCopyWith<_ChangeSliderComponentSize> get copyWith;
}

/// @nodoc
abstract class _$ToggleFullScreenCopyWith<$Res> {
  factory _$ToggleFullScreenCopyWith(
          _ToggleFullScreen value, $Res Function(_ToggleFullScreen) then) =
      __$ToggleFullScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggleFullScreenCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$ToggleFullScreenCopyWith<$Res> {
  __$ToggleFullScreenCopyWithImpl(
      _ToggleFullScreen _value, $Res Function(_ToggleFullScreen) _then)
      : super(_value, (v) => _then(v as _ToggleFullScreen));

  @override
  _ToggleFullScreen get _value => super._value as _ToggleFullScreen;
}

/// @nodoc
class _$_ToggleFullScreen
    with DiagnosticableTreeMixin
    implements _ToggleFullScreen {
  const _$_ToggleFullScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.toggleFullScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.toggleFullScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToggleFullScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return toggleFullScreen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleFullScreen != null) {
      return toggleFullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return toggleFullScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleFullScreen != null) {
      return toggleFullScreen(this);
    }
    return orElse();
  }
}

abstract class _ToggleFullScreen implements PlaybackEvent {
  const factory _ToggleFullScreen() = _$_ToggleFullScreen;
}

/// @nodoc
abstract class _$RefreshVideoPlayerCopyWith<$Res> {
  factory _$RefreshVideoPlayerCopyWith(
          _RefreshVideoPlayer value, $Res Function(_RefreshVideoPlayer) then) =
      __$RefreshVideoPlayerCopyWithImpl<$Res>;
  $Res call({PlaybackState state});

  $PlaybackStateCopyWith<$Res> get state;
}

/// @nodoc
class __$RefreshVideoPlayerCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$RefreshVideoPlayerCopyWith<$Res> {
  __$RefreshVideoPlayerCopyWithImpl(
      _RefreshVideoPlayer _value, $Res Function(_RefreshVideoPlayer) _then)
      : super(_value, (v) => _then(v as _RefreshVideoPlayer));

  @override
  _RefreshVideoPlayer get _value => super._value as _RefreshVideoPlayer;

  @override
  $Res call({
    Object state = freezed,
  }) {
    return _then(_RefreshVideoPlayer(
      state == freezed ? _value.state : state as PlaybackState,
    ));
  }

  @override
  $PlaybackStateCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $PlaybackStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
class _$_RefreshVideoPlayer
    with DiagnosticableTreeMixin
    implements _RefreshVideoPlayer {
  const _$_RefreshVideoPlayer([this.state]);

  @override
  final PlaybackState state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.refreshPlayer(state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.refreshPlayer'))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshVideoPlayer &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @override
  _$RefreshVideoPlayerCopyWith<_RefreshVideoPlayer> get copyWith =>
      __$RefreshVideoPlayerCopyWithImpl<_RefreshVideoPlayer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return refreshPlayer(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshPlayer != null) {
      return refreshPlayer(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return refreshPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshPlayer != null) {
      return refreshPlayer(this);
    }
    return orElse();
  }
}

abstract class _RefreshVideoPlayer implements PlaybackEvent {
  const factory _RefreshVideoPlayer([PlaybackState state]) =
      _$_RefreshVideoPlayer;

  PlaybackState get state;
  _$RefreshVideoPlayerCopyWith<_RefreshVideoPlayer> get copyWith;
}

/// @nodoc
abstract class _$FastForwardVideoCopyWith<$Res> {
  factory _$FastForwardVideoCopyWith(
          _FastForwardVideo value, $Res Function(_FastForwardVideo) then) =
      __$FastForwardVideoCopyWithImpl<$Res>;
  $Res call({Duration moment});
}

/// @nodoc
class __$FastForwardVideoCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$FastForwardVideoCopyWith<$Res> {
  __$FastForwardVideoCopyWithImpl(
      _FastForwardVideo _value, $Res Function(_FastForwardVideo) _then)
      : super(_value, (v) => _then(v as _FastForwardVideo));

  @override
  _FastForwardVideo get _value => super._value as _FastForwardVideo;

  @override
  $Res call({
    Object moment = freezed,
  }) {
    return _then(_FastForwardVideo(
      moment == freezed ? _value.moment : moment as Duration,
    ));
  }
}

/// @nodoc
class _$_FastForwardVideo
    with DiagnosticableTreeMixin
    implements _FastForwardVideo {
  const _$_FastForwardVideo([this.moment = const Duration(seconds: 10)])
      : assert(moment != null);

  @JsonKey(defaultValue: const Duration(seconds: 10))
  @override
  final Duration moment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.fastForward(moment: $moment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.fastForward'))
      ..add(DiagnosticsProperty('moment', moment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FastForwardVideo &&
            (identical(other.moment, moment) ||
                const DeepCollectionEquality().equals(other.moment, moment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moment);

  @override
  _$FastForwardVideoCopyWith<_FastForwardVideo> get copyWith =>
      __$FastForwardVideoCopyWithImpl<_FastForwardVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return fastForward(moment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fastForward != null) {
      return fastForward(moment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return fastForward(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fastForward != null) {
      return fastForward(this);
    }
    return orElse();
  }
}

abstract class _FastForwardVideo implements PlaybackEvent {
  const factory _FastForwardVideo([Duration moment]) = _$_FastForwardVideo;

  Duration get moment;
  _$FastForwardVideoCopyWith<_FastForwardVideo> get copyWith;
}

/// @nodoc
abstract class _$SeekCopyWith<$Res> {
  factory _$SeekCopyWith(_Seek value, $Res Function(_Seek) then) =
      __$SeekCopyWithImpl<$Res>;
  $Res call({Duration progress});
}

/// @nodoc
class __$SeekCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$SeekCopyWith<$Res> {
  __$SeekCopyWithImpl(_Seek _value, $Res Function(_Seek) _then)
      : super(_value, (v) => _then(v as _Seek));

  @override
  _Seek get _value => super._value as _Seek;

  @override
  $Res call({
    Object progress = freezed,
  }) {
    return _then(_Seek(
      progress == freezed ? _value.progress : progress as Duration,
    ));
  }
}

/// @nodoc
class _$_Seek with DiagnosticableTreeMixin implements _Seek {
  const _$_Seek([this.progress = const Duration(seconds: 4)])
      : assert(progress != null);

  @JsonKey(defaultValue: const Duration(seconds: 4))
  @override
  final Duration progress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.seek(progress: $progress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.seek'))
      ..add(DiagnosticsProperty('progress', progress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Seek &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(progress);

  @override
  _$SeekCopyWith<_Seek> get copyWith =>
      __$SeekCopyWithImpl<_Seek>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return seek(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seek != null) {
      return seek(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class _Seek implements PlaybackEvent {
  const factory _Seek([Duration progress]) = _$_Seek;

  Duration get progress;
  _$SeekCopyWith<_Seek> get copyWith;
}

/// @nodoc
abstract class _$RewindVideoCopyWith<$Res> {
  factory _$RewindVideoCopyWith(
          _RewindVideo value, $Res Function(_RewindVideo) then) =
      __$RewindVideoCopyWithImpl<$Res>;
  $Res call({Duration moment});
}

/// @nodoc
class __$RewindVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$RewindVideoCopyWith<$Res> {
  __$RewindVideoCopyWithImpl(
      _RewindVideo _value, $Res Function(_RewindVideo) _then)
      : super(_value, (v) => _then(v as _RewindVideo));

  @override
  _RewindVideo get _value => super._value as _RewindVideo;

  @override
  $Res call({
    Object moment = freezed,
  }) {
    return _then(_RewindVideo(
      moment == freezed ? _value.moment : moment as Duration,
    ));
  }
}

/// @nodoc
class _$_RewindVideo with DiagnosticableTreeMixin implements _RewindVideo {
  const _$_RewindVideo([this.moment = const Duration(seconds: 10)])
      : assert(moment != null);

  @JsonKey(defaultValue: const Duration(seconds: 10))
  @override
  final Duration moment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.rewind(moment: $moment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.rewind'))
      ..add(DiagnosticsProperty('moment', moment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RewindVideo &&
            (identical(other.moment, moment) ||
                const DeepCollectionEquality().equals(other.moment, moment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(moment);

  @override
  _$RewindVideoCopyWith<_RewindVideo> get copyWith =>
      __$RewindVideoCopyWithImpl<_RewindVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    @required TResult play(bool firstTouch),
    @required TResult pause(),
    @required TResult changePath(String value),
    @required TResult changeVolume(double volume),
    @required TResult mute(),
    @required TResult unMute(),
    @required TResult enterFullScreen(),
    @required TResult exitFullScreen(),
    @required TResult changeSliderSize(SliderConfiguration config),
    @required TResult toggleFullScreen(),
    @required TResult refreshPlayer(PlaybackState state),
    @required TResult fastForward(Duration moment),
    @required TResult seek(Duration progress),
    @required TResult rewind(Duration moment),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return rewind(moment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setupVideoPlayer(String url, @nullable FlickManager controller),
    TResult play(bool firstTouch),
    TResult pause(),
    TResult changePath(String value),
    TResult changeVolume(double volume),
    TResult mute(),
    TResult unMute(),
    TResult enterFullScreen(),
    TResult exitFullScreen(),
    TResult changeSliderSize(SliderConfiguration config),
    TResult toggleFullScreen(),
    TResult refreshPlayer(PlaybackState state),
    TResult fastForward(Duration moment),
    TResult seek(Duration progress),
    TResult rewind(Duration moment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rewind != null) {
      return rewind(moment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setupVideoPlayer(_SetupVideoController value),
    @required TResult play(_PlayVideo value),
    @required TResult pause(_PauseVideo value),
    @required TResult changePath(_ChangePath value),
    @required TResult changeVolume(_SetVolume value),
    @required TResult mute(_MuteVideo value),
    @required TResult unMute(_UnMuteVideo value),
    @required TResult enterFullScreen(_EnterFullScreen value),
    @required TResult exitFullScreen(_ExitFullScreen value),
    @required TResult changeSliderSize(_ChangeSliderComponentSize value),
    @required TResult toggleFullScreen(_ToggleFullScreen value),
    @required TResult refreshPlayer(_RefreshVideoPlayer value),
    @required TResult fastForward(_FastForwardVideo value),
    @required TResult seek(_Seek value),
    @required TResult rewind(_RewindVideo value),
  }) {
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(changeSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return rewind(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setupVideoPlayer(_SetupVideoController value),
    TResult play(_PlayVideo value),
    TResult pause(_PauseVideo value),
    TResult changePath(_ChangePath value),
    TResult changeVolume(_SetVolume value),
    TResult mute(_MuteVideo value),
    TResult unMute(_UnMuteVideo value),
    TResult enterFullScreen(_EnterFullScreen value),
    TResult exitFullScreen(_ExitFullScreen value),
    TResult changeSliderSize(_ChangeSliderComponentSize value),
    TResult toggleFullScreen(_ToggleFullScreen value),
    TResult refreshPlayer(_RefreshVideoPlayer value),
    TResult fastForward(_FastForwardVideo value),
    TResult seek(_Seek value),
    TResult rewind(_RewindVideo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rewind != null) {
      return rewind(this);
    }
    return orElse();
  }
}

abstract class _RewindVideo implements PlaybackEvent {
  const factory _RewindVideo([Duration moment]) = _$_RewindVideo;

  Duration get moment;
  _$RewindVideoCopyWith<_RewindVideo> get copyWith;
}

/// @nodoc
class _$PlaybackStateTearOff {
  const _$PlaybackStateTearOff();

// ignore: unused_element
  _PlaybackState call(
      {@nullable FlickManager manager,
      @required SliderConfiguration sliderConfig,
      @nullable VideoPlayerValue notifier,
      String path = PlaybackState.DEFAULT_PATH,
      String fileName = PlaybackState.TEST_VIDEO_NAME,
      String extension = PlaybackState.DEFAULT_EXTENSION,
      Duration buffered = Duration.zero,
      Duration playbackDuration = Duration.zero,
      double volume = PlaybackState.INITIAL_VOLUME,
      Duration moment = Duration.zero,
      bool autoPlay = false,
      bool willLoop = false,
      bool isInitialized = false,
      bool isLoading = false,
      bool isPlaying = false,
      bool isFinished = false,
      bool isSeeking = false,
      bool isMute = false,
      bool isBuffering = false,
      bool isFullscreen = false}) {
    return _PlaybackState(
      manager: manager,
      sliderConfig: sliderConfig,
      notifier: notifier,
      path: path,
      fileName: fileName,
      extension: extension,
      buffered: buffered,
      playbackDuration: playbackDuration,
      volume: volume,
      moment: moment,
      autoPlay: autoPlay,
      willLoop: willLoop,
      isInitialized: isInitialized,
      isLoading: isLoading,
      isPlaying: isPlaying,
      isFinished: isFinished,
      isSeeking: isSeeking,
      isMute: isMute,
      isBuffering: isBuffering,
      isFullscreen: isFullscreen,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlaybackState = _$PlaybackStateTearOff();

/// @nodoc
mixin _$PlaybackState {
  @nullable
  FlickManager get manager;
  SliderConfiguration get sliderConfig;
  @nullable
  VideoPlayerValue get notifier;
  String get path;
  String get fileName;
  String get extension;
  Duration get buffered;
  Duration get playbackDuration;
  double get volume;
  Duration get moment;
  bool get autoPlay;
  bool get willLoop;
  bool get isInitialized;
  bool get isLoading;
  bool get isPlaying;
  bool get isFinished; // "isSeeking" - When a user is dragging the seek bar
  bool get isSeeking;
  bool
      get isMute; // "isBuffering" - When the video is buffering (Local or Network)
  bool get isBuffering;
  bool get isFullscreen;

  $PlaybackStateCopyWith<PlaybackState> get copyWith;
}

/// @nodoc
abstract class $PlaybackStateCopyWith<$Res> {
  factory $PlaybackStateCopyWith(
          PlaybackState value, $Res Function(PlaybackState) then) =
      _$PlaybackStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable FlickManager manager,
      SliderConfiguration sliderConfig,
      @nullable VideoPlayerValue notifier,
      String path,
      String fileName,
      String extension,
      Duration buffered,
      Duration playbackDuration,
      double volume,
      Duration moment,
      bool autoPlay,
      bool willLoop,
      bool isInitialized,
      bool isLoading,
      bool isPlaying,
      bool isFinished,
      bool isSeeking,
      bool isMute,
      bool isBuffering,
      bool isFullscreen});
}

/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  final PlaybackState _value;
  // ignore: unused_field
  final $Res Function(PlaybackState) _then;

  @override
  $Res call({
    Object manager = freezed,
    Object sliderConfig = freezed,
    Object notifier = freezed,
    Object path = freezed,
    Object fileName = freezed,
    Object extension = freezed,
    Object buffered = freezed,
    Object playbackDuration = freezed,
    Object volume = freezed,
    Object moment = freezed,
    Object autoPlay = freezed,
    Object willLoop = freezed,
    Object isInitialized = freezed,
    Object isLoading = freezed,
    Object isPlaying = freezed,
    Object isFinished = freezed,
    Object isSeeking = freezed,
    Object isMute = freezed,
    Object isBuffering = freezed,
    Object isFullscreen = freezed,
  }) {
    return _then(_value.copyWith(
      manager: manager == freezed ? _value.manager : manager as FlickManager,
      sliderConfig: sliderConfig == freezed
          ? _value.sliderConfig
          : sliderConfig as SliderConfiguration,
      notifier:
          notifier == freezed ? _value.notifier : notifier as VideoPlayerValue,
      path: path == freezed ? _value.path : path as String,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      extension: extension == freezed ? _value.extension : extension as String,
      buffered: buffered == freezed ? _value.buffered : buffered as Duration,
      playbackDuration: playbackDuration == freezed
          ? _value.playbackDuration
          : playbackDuration as Duration,
      volume: volume == freezed ? _value.volume : volume as double,
      moment: moment == freezed ? _value.moment : moment as Duration,
      autoPlay: autoPlay == freezed ? _value.autoPlay : autoPlay as bool,
      willLoop: willLoop == freezed ? _value.willLoop : willLoop as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      isFinished:
          isFinished == freezed ? _value.isFinished : isFinished as bool,
      isSeeking: isSeeking == freezed ? _value.isSeeking : isSeeking as bool,
      isMute: isMute == freezed ? _value.isMute : isMute as bool,
      isBuffering:
          isBuffering == freezed ? _value.isBuffering : isBuffering as bool,
      isFullscreen:
          isFullscreen == freezed ? _value.isFullscreen : isFullscreen as bool,
    ));
  }
}

/// @nodoc
abstract class _$PlaybackStateCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$PlaybackStateCopyWith(
          _PlaybackState value, $Res Function(_PlaybackState) then) =
      __$PlaybackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable FlickManager manager,
      SliderConfiguration sliderConfig,
      @nullable VideoPlayerValue notifier,
      String path,
      String fileName,
      String extension,
      Duration buffered,
      Duration playbackDuration,
      double volume,
      Duration moment,
      bool autoPlay,
      bool willLoop,
      bool isInitialized,
      bool isLoading,
      bool isPlaying,
      bool isFinished,
      bool isSeeking,
      bool isMute,
      bool isBuffering,
      bool isFullscreen});
}

/// @nodoc
class __$PlaybackStateCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res>
    implements _$PlaybackStateCopyWith<$Res> {
  __$PlaybackStateCopyWithImpl(
      _PlaybackState _value, $Res Function(_PlaybackState) _then)
      : super(_value, (v) => _then(v as _PlaybackState));

  @override
  _PlaybackState get _value => super._value as _PlaybackState;

  @override
  $Res call({
    Object manager = freezed,
    Object sliderConfig = freezed,
    Object notifier = freezed,
    Object path = freezed,
    Object fileName = freezed,
    Object extension = freezed,
    Object buffered = freezed,
    Object playbackDuration = freezed,
    Object volume = freezed,
    Object moment = freezed,
    Object autoPlay = freezed,
    Object willLoop = freezed,
    Object isInitialized = freezed,
    Object isLoading = freezed,
    Object isPlaying = freezed,
    Object isFinished = freezed,
    Object isSeeking = freezed,
    Object isMute = freezed,
    Object isBuffering = freezed,
    Object isFullscreen = freezed,
  }) {
    return _then(_PlaybackState(
      manager: manager == freezed ? _value.manager : manager as FlickManager,
      sliderConfig: sliderConfig == freezed
          ? _value.sliderConfig
          : sliderConfig as SliderConfiguration,
      notifier:
          notifier == freezed ? _value.notifier : notifier as VideoPlayerValue,
      path: path == freezed ? _value.path : path as String,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      extension: extension == freezed ? _value.extension : extension as String,
      buffered: buffered == freezed ? _value.buffered : buffered as Duration,
      playbackDuration: playbackDuration == freezed
          ? _value.playbackDuration
          : playbackDuration as Duration,
      volume: volume == freezed ? _value.volume : volume as double,
      moment: moment == freezed ? _value.moment : moment as Duration,
      autoPlay: autoPlay == freezed ? _value.autoPlay : autoPlay as bool,
      willLoop: willLoop == freezed ? _value.willLoop : willLoop as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      isFinished:
          isFinished == freezed ? _value.isFinished : isFinished as bool,
      isSeeking: isSeeking == freezed ? _value.isSeeking : isSeeking as bool,
      isMute: isMute == freezed ? _value.isMute : isMute as bool,
      isBuffering:
          isBuffering == freezed ? _value.isBuffering : isBuffering as bool,
      isFullscreen:
          isFullscreen == freezed ? _value.isFullscreen : isFullscreen as bool,
    ));
  }
}

/// @nodoc
class _$_PlaybackState extends _PlaybackState with DiagnosticableTreeMixin {
  const _$_PlaybackState(
      {@nullable this.manager,
      @required this.sliderConfig,
      @nullable this.notifier,
      this.path = PlaybackState.DEFAULT_PATH,
      this.fileName = PlaybackState.TEST_VIDEO_NAME,
      this.extension = PlaybackState.DEFAULT_EXTENSION,
      this.buffered = Duration.zero,
      this.playbackDuration = Duration.zero,
      this.volume = PlaybackState.INITIAL_VOLUME,
      this.moment = Duration.zero,
      this.autoPlay = false,
      this.willLoop = false,
      this.isInitialized = false,
      this.isLoading = false,
      this.isPlaying = false,
      this.isFinished = false,
      this.isSeeking = false,
      this.isMute = false,
      this.isBuffering = false,
      this.isFullscreen = false})
      : assert(sliderConfig != null),
        assert(path != null),
        assert(fileName != null),
        assert(extension != null),
        assert(buffered != null),
        assert(playbackDuration != null),
        assert(volume != null),
        assert(moment != null),
        assert(autoPlay != null),
        assert(willLoop != null),
        assert(isInitialized != null),
        assert(isLoading != null),
        assert(isPlaying != null),
        assert(isFinished != null),
        assert(isSeeking != null),
        assert(isMute != null),
        assert(isBuffering != null),
        assert(isFullscreen != null),
        super._();

  @override
  @nullable
  final FlickManager manager;
  @override
  final SliderConfiguration sliderConfig;
  @override
  @nullable
  final VideoPlayerValue notifier;
  @JsonKey(defaultValue: PlaybackState.DEFAULT_PATH)
  @override
  final String path;
  @JsonKey(defaultValue: PlaybackState.TEST_VIDEO_NAME)
  @override
  final String fileName;
  @JsonKey(defaultValue: PlaybackState.DEFAULT_EXTENSION)
  @override
  final String extension;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration buffered;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration playbackDuration;
  @JsonKey(defaultValue: PlaybackState.INITIAL_VOLUME)
  @override
  final double volume;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration moment;
  @JsonKey(defaultValue: false)
  @override
  final bool autoPlay;
  @JsonKey(defaultValue: false)
  @override
  final bool willLoop;
  @JsonKey(defaultValue: false)
  @override
  final bool isInitialized;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isPlaying;
  @JsonKey(defaultValue: false)
  @override
  final bool isFinished;
  @JsonKey(defaultValue: false)
  @override // "isSeeking" - When a user is dragging the seek bar
  final bool isSeeking;
  @JsonKey(defaultValue: false)
  @override
  final bool isMute;
  @JsonKey(defaultValue: false)
  @override // "isBuffering" - When the video is buffering (Local or Network)
  final bool isBuffering;
  @JsonKey(defaultValue: false)
  @override
  final bool isFullscreen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackState(manager: $manager, sliderConfig: $sliderConfig, notifier: $notifier, path: $path, fileName: $fileName, extension: $extension, buffered: $buffered, playbackDuration: $playbackDuration, volume: $volume, moment: $moment, autoPlay: $autoPlay, willLoop: $willLoop, isInitialized: $isInitialized, isLoading: $isLoading, isPlaying: $isPlaying, isFinished: $isFinished, isSeeking: $isSeeking, isMute: $isMute, isBuffering: $isBuffering, isFullscreen: $isFullscreen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackState'))
      ..add(DiagnosticsProperty('manager', manager))
      ..add(DiagnosticsProperty('sliderConfig', sliderConfig))
      ..add(DiagnosticsProperty('notifier', notifier))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('extension', extension))
      ..add(DiagnosticsProperty('buffered', buffered))
      ..add(DiagnosticsProperty('playbackDuration', playbackDuration))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('moment', moment))
      ..add(DiagnosticsProperty('autoPlay', autoPlay))
      ..add(DiagnosticsProperty('willLoop', willLoop))
      ..add(DiagnosticsProperty('isInitialized', isInitialized))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('isFinished', isFinished))
      ..add(DiagnosticsProperty('isSeeking', isSeeking))
      ..add(DiagnosticsProperty('isMute', isMute))
      ..add(DiagnosticsProperty('isBuffering', isBuffering))
      ..add(DiagnosticsProperty('isFullscreen', isFullscreen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaybackState &&
            (identical(other.manager, manager) ||
                const DeepCollectionEquality()
                    .equals(other.manager, manager)) &&
            (identical(other.sliderConfig, sliderConfig) ||
                const DeepCollectionEquality()
                    .equals(other.sliderConfig, sliderConfig)) &&
            (identical(other.notifier, notifier) ||
                const DeepCollectionEquality()
                    .equals(other.notifier, notifier)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.extension, extension) ||
                const DeepCollectionEquality()
                    .equals(other.extension, extension)) &&
            (identical(other.buffered, buffered) ||
                const DeepCollectionEquality()
                    .equals(other.buffered, buffered)) &&
            (identical(other.playbackDuration, playbackDuration) ||
                const DeepCollectionEquality()
                    .equals(other.playbackDuration, playbackDuration)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.moment, moment) ||
                const DeepCollectionEquality().equals(other.moment, moment)) &&
            (identical(other.autoPlay, autoPlay) ||
                const DeepCollectionEquality()
                    .equals(other.autoPlay, autoPlay)) &&
            (identical(other.willLoop, willLoop) ||
                const DeepCollectionEquality()
                    .equals(other.willLoop, willLoop)) &&
            (identical(other.isInitialized, isInitialized) ||
                const DeepCollectionEquality()
                    .equals(other.isInitialized, isInitialized)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)) &&
            (identical(other.isSeeking, isSeeking) ||
                const DeepCollectionEquality()
                    .equals(other.isSeeking, isSeeking)) &&
            (identical(other.isMute, isMute) ||
                const DeepCollectionEquality().equals(other.isMute, isMute)) &&
            (identical(other.isBuffering, isBuffering) ||
                const DeepCollectionEquality()
                    .equals(other.isBuffering, isBuffering)) &&
            (identical(other.isFullscreen, isFullscreen) ||
                const DeepCollectionEquality()
                    .equals(other.isFullscreen, isFullscreen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(manager) ^
      const DeepCollectionEquality().hash(sliderConfig) ^
      const DeepCollectionEquality().hash(notifier) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(buffered) ^
      const DeepCollectionEquality().hash(playbackDuration) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(moment) ^
      const DeepCollectionEquality().hash(autoPlay) ^
      const DeepCollectionEquality().hash(willLoop) ^
      const DeepCollectionEquality().hash(isInitialized) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(isSeeking) ^
      const DeepCollectionEquality().hash(isMute) ^
      const DeepCollectionEquality().hash(isBuffering) ^
      const DeepCollectionEquality().hash(isFullscreen);

  @override
  _$PlaybackStateCopyWith<_PlaybackState> get copyWith =>
      __$PlaybackStateCopyWithImpl<_PlaybackState>(this, _$identity);
}

abstract class _PlaybackState extends PlaybackState {
  const _PlaybackState._() : super._();
  const factory _PlaybackState(
      {@nullable FlickManager manager,
      @required SliderConfiguration sliderConfig,
      @nullable VideoPlayerValue notifier,
      String path,
      String fileName,
      String extension,
      Duration buffered,
      Duration playbackDuration,
      double volume,
      Duration moment,
      bool autoPlay,
      bool willLoop,
      bool isInitialized,
      bool isLoading,
      bool isPlaying,
      bool isFinished,
      bool isSeeking,
      bool isMute,
      bool isBuffering,
      bool isFullscreen}) = _$_PlaybackState;

  @override
  @nullable
  FlickManager get manager;
  @override
  SliderConfiguration get sliderConfig;
  @override
  @nullable
  VideoPlayerValue get notifier;
  @override
  String get path;
  @override
  String get fileName;
  @override
  String get extension;
  @override
  Duration get buffered;
  @override
  Duration get playbackDuration;
  @override
  double get volume;
  @override
  Duration get moment;
  @override
  bool get autoPlay;
  @override
  bool get willLoop;
  @override
  bool get isInitialized;
  @override
  bool get isLoading;
  @override
  bool get isPlaying;
  @override
  bool get isFinished;
  @override // "isSeeking" - When a user is dragging the seek bar
  bool get isSeeking;
  @override
  bool get isMute;
  @override // "isBuffering" - When the video is buffering (Local or Network)
  bool get isBuffering;
  @override
  bool get isFullscreen;
  @override
  _$PlaybackStateCopyWith<_PlaybackState> get copyWith;
}
