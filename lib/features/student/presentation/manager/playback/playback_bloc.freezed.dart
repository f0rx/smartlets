// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'playback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PlaybackEventTearOff {
  const _$PlaybackEventTearOff();

// ignore: unused_element
  _InitializeLocalVideo initializeLocalVideo(BuildContext context) {
    return _InitializeLocalVideo(
      context,
    );
  }

// ignore: unused_element
  _SetupVideoController setupVideoPlayer(String url,
      {@nullable BetterPlayerController controller,
      @nullable PlaybackState oldState,
      bool isFullScreen = false,
      BetterPlayerDataSourceType type = BetterPlayerDataSourceType.NETWORK}) {
    return _SetupVideoController(
      url,
      controller: controller,
      oldState: oldState,
      isFullScreen: isFullScreen,
      type: type,
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
  _IncreaseSliderComponentSize increaseSliderSize(
      {SliderConfiguration config}) {
    return _IncreaseSliderComponentSize(
      config: config,
    );
  }

// ignore: unused_element
  _DecreaseSliderComponentSize decreaseSliderSize(
      {SliderConfiguration config}) {
    return _DecreaseSliderComponentSize(
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

// ignore: unused_element
const $PlaybackEvent = _$PlaybackEventTearOff();

mixin _$PlaybackEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
  });
}

abstract class $PlaybackEventCopyWith<$Res> {
  factory $PlaybackEventCopyWith(
          PlaybackEvent value, $Res Function(PlaybackEvent) then) =
      _$PlaybackEventCopyWithImpl<$Res>;
}

class _$PlaybackEventCopyWithImpl<$Res>
    implements $PlaybackEventCopyWith<$Res> {
  _$PlaybackEventCopyWithImpl(this._value, this._then);

  final PlaybackEvent _value;
  // ignore: unused_field
  final $Res Function(PlaybackEvent) _then;
}

abstract class _$InitializeLocalVideoCopyWith<$Res> {
  factory _$InitializeLocalVideoCopyWith(_InitializeLocalVideo value,
          $Res Function(_InitializeLocalVideo) then) =
      __$InitializeLocalVideoCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class __$InitializeLocalVideoCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$InitializeLocalVideoCopyWith<$Res> {
  __$InitializeLocalVideoCopyWithImpl(
      _InitializeLocalVideo _value, $Res Function(_InitializeLocalVideo) _then)
      : super(_value, (v) => _then(v as _InitializeLocalVideo));

  @override
  _InitializeLocalVideo get _value => super._value as _InitializeLocalVideo;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(_InitializeLocalVideo(
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$_InitializeLocalVideo
    with DiagnosticableTreeMixin
    implements _InitializeLocalVideo {
  const _$_InitializeLocalVideo(this.context) : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.initializeLocalVideo(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.initializeLocalVideo'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitializeLocalVideo &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  _$InitializeLocalVideoCopyWith<_InitializeLocalVideo> get copyWith =>
      __$InitializeLocalVideoCopyWithImpl<_InitializeLocalVideo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return initializeLocalVideo(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeLocalVideo != null) {
      return initializeLocalVideo(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return initializeLocalVideo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeLocalVideo != null) {
      return initializeLocalVideo(this);
    }
    return orElse();
  }
}

abstract class _InitializeLocalVideo implements PlaybackEvent {
  const factory _InitializeLocalVideo(BuildContext context) =
      _$_InitializeLocalVideo;

  BuildContext get context;
  _$InitializeLocalVideoCopyWith<_InitializeLocalVideo> get copyWith;
}

abstract class _$SetupVideoControllerCopyWith<$Res> {
  factory _$SetupVideoControllerCopyWith(_SetupVideoController value,
          $Res Function(_SetupVideoController) then) =
      __$SetupVideoControllerCopyWithImpl<$Res>;
  $Res call(
      {String url,
      @nullable BetterPlayerController controller,
      @nullable PlaybackState oldState,
      bool isFullScreen,
      BetterPlayerDataSourceType type});

  $PlaybackStateCopyWith<$Res> get oldState;
}

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
    Object oldState = freezed,
    Object isFullScreen = freezed,
    Object type = freezed,
  }) {
    return _then(_SetupVideoController(
      url == freezed ? _value.url : url as String,
      controller: controller == freezed
          ? _value.controller
          : controller as BetterPlayerController,
      oldState:
          oldState == freezed ? _value.oldState : oldState as PlaybackState,
      isFullScreen:
          isFullScreen == freezed ? _value.isFullScreen : isFullScreen as bool,
      type: type == freezed ? _value.type : type as BetterPlayerDataSourceType,
    ));
  }

  @override
  $PlaybackStateCopyWith<$Res> get oldState {
    if (_value.oldState == null) {
      return null;
    }
    return $PlaybackStateCopyWith<$Res>(_value.oldState, (value) {
      return _then(_value.copyWith(oldState: value));
    });
  }
}

class _$_SetupVideoController
    with DiagnosticableTreeMixin
    implements _SetupVideoController {
  const _$_SetupVideoController(this.url,
      {@nullable this.controller,
      @nullable this.oldState,
      this.isFullScreen = false,
      this.type = BetterPlayerDataSourceType.NETWORK})
      : assert(url != null),
        assert(isFullScreen != null),
        assert(type != null);

  @override
  final String url;
  @override
  @nullable
  final BetterPlayerController controller;
  @override
  @nullable
  final PlaybackState oldState;
  @JsonKey(defaultValue: false)
  @override
  final bool isFullScreen;
  @JsonKey(defaultValue: BetterPlayerDataSourceType.NETWORK)
  @override
  final BetterPlayerDataSourceType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.setupVideoPlayer(url: $url, controller: $controller, oldState: $oldState, isFullScreen: $isFullScreen, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.setupVideoPlayer'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('oldState', oldState))
      ..add(DiagnosticsProperty('isFullScreen', isFullScreen))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetupVideoController &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.oldState, oldState) ||
                const DeepCollectionEquality()
                    .equals(other.oldState, oldState)) &&
            (identical(other.isFullScreen, isFullScreen) ||
                const DeepCollectionEquality()
                    .equals(other.isFullScreen, isFullScreen)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(oldState) ^
      const DeepCollectionEquality().hash(isFullScreen) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$SetupVideoControllerCopyWith<_SetupVideoController> get copyWith =>
      __$SetupVideoControllerCopyWithImpl<_SetupVideoController>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return setupVideoPlayer(url, controller, oldState, isFullScreen, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setupVideoPlayer != null) {
      return setupVideoPlayer(url, controller, oldState, isFullScreen, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return setupVideoPlayer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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
      {@nullable BetterPlayerController controller,
      @nullable PlaybackState oldState,
      bool isFullScreen,
      BetterPlayerDataSourceType type}) = _$_SetupVideoController;

  String get url;
  @nullable
  BetterPlayerController get controller;
  @nullable
  PlaybackState get oldState;
  bool get isFullScreen;
  BetterPlayerDataSourceType get type;
  _$SetupVideoControllerCopyWith<_SetupVideoController> get copyWith;
}

abstract class _$PlayVideoCopyWith<$Res> {
  factory _$PlayVideoCopyWith(
          _PlayVideo value, $Res Function(_PlayVideo) then) =
      __$PlayVideoCopyWithImpl<$Res>;
  $Res call({bool firstTouch});
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return play(firstTouch);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (play != null) {
      return play(firstTouch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return play(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$PauseVideoCopyWith<$Res> {
  factory _$PauseVideoCopyWith(
          _PauseVideo value, $Res Function(_PauseVideo) then) =
      __$PauseVideoCopyWithImpl<$Res>;
}

class __$PauseVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$PauseVideoCopyWith<$Res> {
  __$PauseVideoCopyWithImpl(
      _PauseVideo _value, $Res Function(_PauseVideo) _then)
      : super(_value, (v) => _then(v as _PauseVideo));

  @override
  _PauseVideo get _value => super._value as _PauseVideo;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return pause();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return pause(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$ChangePathCopyWith<$Res> {
  factory _$ChangePathCopyWith(
          _ChangePath value, $Res Function(_ChangePath) then) =
      __$ChangePathCopyWithImpl<$Res>;
  $Res call({String value});
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changePath(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePath != null) {
      return changePath(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changePath(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$SetVolumeCopyWith<$Res> {
  factory _$SetVolumeCopyWith(
          _SetVolume value, $Res Function(_SetVolume) then) =
      __$SetVolumeCopyWithImpl<$Res>;
  $Res call({double volume});
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changeVolume(volume);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeVolume != null) {
      return changeVolume(volume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return changeVolume(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$MuteVideoCopyWith<$Res> {
  factory _$MuteVideoCopyWith(
          _MuteVideo value, $Res Function(_MuteVideo) then) =
      __$MuteVideoCopyWithImpl<$Res>;
}

class __$MuteVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$MuteVideoCopyWith<$Res> {
  __$MuteVideoCopyWithImpl(_MuteVideo _value, $Res Function(_MuteVideo) _then)
      : super(_value, (v) => _then(v as _MuteVideo));

  @override
  _MuteVideo get _value => super._value as _MuteVideo;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return mute();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mute != null) {
      return mute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return mute(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$UnMuteVideoCopyWith<$Res> {
  factory _$UnMuteVideoCopyWith(
          _UnMuteVideo value, $Res Function(_UnMuteVideo) then) =
      __$UnMuteVideoCopyWithImpl<$Res>;
}

class __$UnMuteVideoCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$UnMuteVideoCopyWith<$Res> {
  __$UnMuteVideoCopyWithImpl(
      _UnMuteVideo _value, $Res Function(_UnMuteVideo) _then)
      : super(_value, (v) => _then(v as _UnMuteVideo));

  @override
  _UnMuteVideo get _value => super._value as _UnMuteVideo;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return unMute();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unMute != null) {
      return unMute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return unMute(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$EnterFullScreenCopyWith<$Res> {
  factory _$EnterFullScreenCopyWith(
          _EnterFullScreen value, $Res Function(_EnterFullScreen) then) =
      __$EnterFullScreenCopyWithImpl<$Res>;
}

class __$EnterFullScreenCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$EnterFullScreenCopyWith<$Res> {
  __$EnterFullScreenCopyWithImpl(
      _EnterFullScreen _value, $Res Function(_EnterFullScreen) _then)
      : super(_value, (v) => _then(v as _EnterFullScreen));

  @override
  _EnterFullScreen get _value => super._value as _EnterFullScreen;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return enterFullScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enterFullScreen != null) {
      return enterFullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return enterFullScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$ExitFullScreenCopyWith<$Res> {
  factory _$ExitFullScreenCopyWith(
          _ExitFullScreen value, $Res Function(_ExitFullScreen) then) =
      __$ExitFullScreenCopyWithImpl<$Res>;
}

class __$ExitFullScreenCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$ExitFullScreenCopyWith<$Res> {
  __$ExitFullScreenCopyWithImpl(
      _ExitFullScreen _value, $Res Function(_ExitFullScreen) _then)
      : super(_value, (v) => _then(v as _ExitFullScreen));

  @override
  _ExitFullScreen get _value => super._value as _ExitFullScreen;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return exitFullScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exitFullScreen != null) {
      return exitFullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return exitFullScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$IncreaseSliderComponentSizeCopyWith<$Res> {
  factory _$IncreaseSliderComponentSizeCopyWith(
          _IncreaseSliderComponentSize value,
          $Res Function(_IncreaseSliderComponentSize) then) =
      __$IncreaseSliderComponentSizeCopyWithImpl<$Res>;
  $Res call({SliderConfiguration config});
}

class __$IncreaseSliderComponentSizeCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$IncreaseSliderComponentSizeCopyWith<$Res> {
  __$IncreaseSliderComponentSizeCopyWithImpl(
      _IncreaseSliderComponentSize _value,
      $Res Function(_IncreaseSliderComponentSize) _then)
      : super(_value, (v) => _then(v as _IncreaseSliderComponentSize));

  @override
  _IncreaseSliderComponentSize get _value =>
      super._value as _IncreaseSliderComponentSize;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(_IncreaseSliderComponentSize(
      config: config == freezed ? _value.config : config as SliderConfiguration,
    ));
  }
}

class _$_IncreaseSliderComponentSize
    with DiagnosticableTreeMixin
    implements _IncreaseSliderComponentSize {
  const _$_IncreaseSliderComponentSize({this.config});

  @override
  final SliderConfiguration config;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.increaseSliderSize(config: $config)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.increaseSliderSize'))
      ..add(DiagnosticsProperty('config', config));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncreaseSliderComponentSize &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @override
  _$IncreaseSliderComponentSizeCopyWith<_IncreaseSliderComponentSize>
      get copyWith => __$IncreaseSliderComponentSizeCopyWithImpl<
          _IncreaseSliderComponentSize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return increaseSliderSize(config);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (increaseSliderSize != null) {
      return increaseSliderSize(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return increaseSliderSize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (increaseSliderSize != null) {
      return increaseSliderSize(this);
    }
    return orElse();
  }
}

abstract class _IncreaseSliderComponentSize implements PlaybackEvent {
  const factory _IncreaseSliderComponentSize({SliderConfiguration config}) =
      _$_IncreaseSliderComponentSize;

  SliderConfiguration get config;
  _$IncreaseSliderComponentSizeCopyWith<_IncreaseSliderComponentSize>
      get copyWith;
}

abstract class _$DecreaseSliderComponentSizeCopyWith<$Res> {
  factory _$DecreaseSliderComponentSizeCopyWith(
          _DecreaseSliderComponentSize value,
          $Res Function(_DecreaseSliderComponentSize) then) =
      __$DecreaseSliderComponentSizeCopyWithImpl<$Res>;
  $Res call({SliderConfiguration config});
}

class __$DecreaseSliderComponentSizeCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$DecreaseSliderComponentSizeCopyWith<$Res> {
  __$DecreaseSliderComponentSizeCopyWithImpl(
      _DecreaseSliderComponentSize _value,
      $Res Function(_DecreaseSliderComponentSize) _then)
      : super(_value, (v) => _then(v as _DecreaseSliderComponentSize));

  @override
  _DecreaseSliderComponentSize get _value =>
      super._value as _DecreaseSliderComponentSize;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(_DecreaseSliderComponentSize(
      config: config == freezed ? _value.config : config as SliderConfiguration,
    ));
  }
}

class _$_DecreaseSliderComponentSize
    with DiagnosticableTreeMixin
    implements _DecreaseSliderComponentSize {
  const _$_DecreaseSliderComponentSize({this.config});

  @override
  final SliderConfiguration config;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackEvent.decreaseSliderSize(config: $config)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackEvent.decreaseSliderSize'))
      ..add(DiagnosticsProperty('config', config));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecreaseSliderComponentSize &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @override
  _$DecreaseSliderComponentSizeCopyWith<_DecreaseSliderComponentSize>
      get copyWith => __$DecreaseSliderComponentSizeCopyWithImpl<
          _DecreaseSliderComponentSize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return decreaseSliderSize(config);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decreaseSliderSize != null) {
      return decreaseSliderSize(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return decreaseSliderSize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decreaseSliderSize != null) {
      return decreaseSliderSize(this);
    }
    return orElse();
  }
}

abstract class _DecreaseSliderComponentSize implements PlaybackEvent {
  const factory _DecreaseSliderComponentSize({SliderConfiguration config}) =
      _$_DecreaseSliderComponentSize;

  SliderConfiguration get config;
  _$DecreaseSliderComponentSizeCopyWith<_DecreaseSliderComponentSize>
      get copyWith;
}

abstract class _$ToggleFullScreenCopyWith<$Res> {
  factory _$ToggleFullScreenCopyWith(
          _ToggleFullScreen value, $Res Function(_ToggleFullScreen) then) =
      __$ToggleFullScreenCopyWithImpl<$Res>;
}

class __$ToggleFullScreenCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$ToggleFullScreenCopyWith<$Res> {
  __$ToggleFullScreenCopyWithImpl(
      _ToggleFullScreen _value, $Res Function(_ToggleFullScreen) _then)
      : super(_value, (v) => _then(v as _ToggleFullScreen));

  @override
  _ToggleFullScreen get _value => super._value as _ToggleFullScreen;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return toggleFullScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleFullScreen != null) {
      return toggleFullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return toggleFullScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$RefreshVideoPlayerCopyWith<$Res> {
  factory _$RefreshVideoPlayerCopyWith(
          _RefreshVideoPlayer value, $Res Function(_RefreshVideoPlayer) then) =
      __$RefreshVideoPlayerCopyWithImpl<$Res>;
  $Res call({PlaybackState state});

  $PlaybackStateCopyWith<$Res> get state;
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return refreshPlayer(state);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshPlayer != null) {
      return refreshPlayer(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return refreshPlayer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$FastForwardVideoCopyWith<$Res> {
  factory _$FastForwardVideoCopyWith(
          _FastForwardVideo value, $Res Function(_FastForwardVideo) then) =
      __$FastForwardVideoCopyWithImpl<$Res>;
  $Res call({Duration moment});
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return fastForward(moment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fastForward != null) {
      return fastForward(moment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return fastForward(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$SeekCopyWith<$Res> {
  factory _$SeekCopyWith(_Seek value, $Res Function(_Seek) then) =
      __$SeekCopyWithImpl<$Res>;
  $Res call({Duration progress});
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return seek(progress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seek != null) {
      return seek(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return seek(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

abstract class _$RewindVideoCopyWith<$Res> {
  factory _$RewindVideoCopyWith(
          _RewindVideo value, $Res Function(_RewindVideo) then) =
      __$RewindVideoCopyWithImpl<$Res>;
  $Res call({Duration moment});
}

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
  Result when<Result extends Object>({
    @required Result initializeLocalVideo(BuildContext context),
    @required
        Result setupVideoPlayer(
            String url,
            @nullable BetterPlayerController controller,
            @nullable PlaybackState oldState,
            bool isFullScreen,
            BetterPlayerDataSourceType type),
    @required Result play(bool firstTouch),
    @required Result pause(),
    @required Result changePath(String value),
    @required Result changeVolume(double volume),
    @required Result mute(),
    @required Result unMute(),
    @required Result enterFullScreen(),
    @required Result exitFullScreen(),
    @required Result increaseSliderSize(SliderConfiguration config),
    @required Result decreaseSliderSize(SliderConfiguration config),
    @required Result toggleFullScreen(),
    @required Result refreshPlayer(PlaybackState state),
    @required Result fastForward(Duration moment),
    @required Result seek(Duration progress),
    @required Result rewind(Duration moment),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return rewind(moment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeLocalVideo(BuildContext context),
    Result setupVideoPlayer(
        String url,
        @nullable BetterPlayerController controller,
        @nullable PlaybackState oldState,
        bool isFullScreen,
        BetterPlayerDataSourceType type),
    Result play(bool firstTouch),
    Result pause(),
    Result changePath(String value),
    Result changeVolume(double volume),
    Result mute(),
    Result unMute(),
    Result enterFullScreen(),
    Result exitFullScreen(),
    Result increaseSliderSize(SliderConfiguration config),
    Result decreaseSliderSize(SliderConfiguration config),
    Result toggleFullScreen(),
    Result refreshPlayer(PlaybackState state),
    Result fastForward(Duration moment),
    Result seek(Duration progress),
    Result rewind(Duration moment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewind != null) {
      return rewind(moment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeLocalVideo(_InitializeLocalVideo value),
    @required Result setupVideoPlayer(_SetupVideoController value),
    @required Result play(_PlayVideo value),
    @required Result pause(_PauseVideo value),
    @required Result changePath(_ChangePath value),
    @required Result changeVolume(_SetVolume value),
    @required Result mute(_MuteVideo value),
    @required Result unMute(_UnMuteVideo value),
    @required Result enterFullScreen(_EnterFullScreen value),
    @required Result exitFullScreen(_ExitFullScreen value),
    @required Result increaseSliderSize(_IncreaseSliderComponentSize value),
    @required Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    @required Result toggleFullScreen(_ToggleFullScreen value),
    @required Result refreshPlayer(_RefreshVideoPlayer value),
    @required Result fastForward(_FastForwardVideo value),
    @required Result seek(_Seek value),
    @required Result rewind(_RewindVideo value),
  }) {
    assert(initializeLocalVideo != null);
    assert(setupVideoPlayer != null);
    assert(play != null);
    assert(pause != null);
    assert(changePath != null);
    assert(changeVolume != null);
    assert(mute != null);
    assert(unMute != null);
    assert(enterFullScreen != null);
    assert(exitFullScreen != null);
    assert(increaseSliderSize != null);
    assert(decreaseSliderSize != null);
    assert(toggleFullScreen != null);
    assert(refreshPlayer != null);
    assert(fastForward != null);
    assert(seek != null);
    assert(rewind != null);
    return rewind(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeLocalVideo(_InitializeLocalVideo value),
    Result setupVideoPlayer(_SetupVideoController value),
    Result play(_PlayVideo value),
    Result pause(_PauseVideo value),
    Result changePath(_ChangePath value),
    Result changeVolume(_SetVolume value),
    Result mute(_MuteVideo value),
    Result unMute(_UnMuteVideo value),
    Result enterFullScreen(_EnterFullScreen value),
    Result exitFullScreen(_ExitFullScreen value),
    Result increaseSliderSize(_IncreaseSliderComponentSize value),
    Result decreaseSliderSize(_DecreaseSliderComponentSize value),
    Result toggleFullScreen(_ToggleFullScreen value),
    Result refreshPlayer(_RefreshVideoPlayer value),
    Result fastForward(_FastForwardVideo value),
    Result seek(_Seek value),
    Result rewind(_RewindVideo value),
    @required Result orElse(),
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

class _$PlaybackStateTearOff {
  const _$PlaybackStateTearOff();

// ignore: unused_element
  _PlaybackState call(
      {BetterPlayerDataSourceType sourceType =
          BetterPlayerDataSourceType.NETWORK,
      BetterPlayerController controller,
      @required SliderConfiguration sliderConfig,
      @nullable dynamic notifier,
      String path = PlaybackState.DEFAULT_PATH,
      String fileName = PlaybackState.TEST_VIDEO_NAME,
      String extension = PlaybackState.DEFAULT_EXTENSION,
      BetterPlayerEventType playerEvent = BetterPlayerEventType.PAUSE,
      Duration buffered = Duration.zero,
      double volume = PlaybackState.INITIAL_VOLUME,
      double volumeBeforeMute = PlaybackState.INITIAL_VOLUME,
      bool autoPlay = false,
      bool willLoop = false,
      bool isFirstTouch = false,
      bool isInitialized = false,
      bool isLoading = false,
      bool isPlaying = false,
      bool isFinished = false,
      bool isSeeking = false,
      bool isMute = false,
      bool isBuffering = false,
      bool isFullscreen = false,
      Duration moment = Duration.zero}) {
    return _PlaybackState(
      sourceType: sourceType,
      controller: controller,
      sliderConfig: sliderConfig,
      notifier: notifier,
      path: path,
      fileName: fileName,
      extension: extension,
      playerEvent: playerEvent,
      buffered: buffered,
      volume: volume,
      volumeBeforeMute: volumeBeforeMute,
      autoPlay: autoPlay,
      willLoop: willLoop,
      isFirstTouch: isFirstTouch,
      isInitialized: isInitialized,
      isLoading: isLoading,
      isPlaying: isPlaying,
      isFinished: isFinished,
      isSeeking: isSeeking,
      isMute: isMute,
      isBuffering: isBuffering,
      isFullscreen: isFullscreen,
      moment: moment,
    );
  }
}

// ignore: unused_element
const $PlaybackState = _$PlaybackStateTearOff();

mixin _$PlaybackState {
  BetterPlayerDataSourceType get sourceType;
  BetterPlayerController get controller;
  SliderConfiguration get sliderConfig;
  @nullable
  dynamic get notifier;
  String get path;
  String get fileName;
  String get extension;
  BetterPlayerEventType get playerEvent;
  Duration get buffered;
  double get volume;
  double get volumeBeforeMute;
  bool get autoPlay;
  bool get willLoop;
  bool get isFirstTouch;
  bool get isInitialized;
  bool get isLoading;
  bool get isPlaying;
  bool get isFinished;
  bool get isSeeking;
  bool get isMute;
  bool get isBuffering;
  bool get isFullscreen;
  Duration get moment;

  $PlaybackStateCopyWith<PlaybackState> get copyWith;
}

abstract class $PlaybackStateCopyWith<$Res> {
  factory $PlaybackStateCopyWith(
          PlaybackState value, $Res Function(PlaybackState) then) =
      _$PlaybackStateCopyWithImpl<$Res>;
  $Res call(
      {BetterPlayerDataSourceType sourceType,
      BetterPlayerController controller,
      SliderConfiguration sliderConfig,
      @nullable dynamic notifier,
      String path,
      String fileName,
      String extension,
      BetterPlayerEventType playerEvent,
      Duration buffered,
      double volume,
      double volumeBeforeMute,
      bool autoPlay,
      bool willLoop,
      bool isFirstTouch,
      bool isInitialized,
      bool isLoading,
      bool isPlaying,
      bool isFinished,
      bool isSeeking,
      bool isMute,
      bool isBuffering,
      bool isFullscreen,
      Duration moment});
}

class _$PlaybackStateCopyWithImpl<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  final PlaybackState _value;
  // ignore: unused_field
  final $Res Function(PlaybackState) _then;

  @override
  $Res call({
    Object sourceType = freezed,
    Object controller = freezed,
    Object sliderConfig = freezed,
    Object notifier = freezed,
    Object path = freezed,
    Object fileName = freezed,
    Object extension = freezed,
    Object playerEvent = freezed,
    Object buffered = freezed,
    Object volume = freezed,
    Object volumeBeforeMute = freezed,
    Object autoPlay = freezed,
    Object willLoop = freezed,
    Object isFirstTouch = freezed,
    Object isInitialized = freezed,
    Object isLoading = freezed,
    Object isPlaying = freezed,
    Object isFinished = freezed,
    Object isSeeking = freezed,
    Object isMute = freezed,
    Object isBuffering = freezed,
    Object isFullscreen = freezed,
    Object moment = freezed,
  }) {
    return _then(_value.copyWith(
      sourceType: sourceType == freezed
          ? _value.sourceType
          : sourceType as BetterPlayerDataSourceType,
      controller: controller == freezed
          ? _value.controller
          : controller as BetterPlayerController,
      sliderConfig: sliderConfig == freezed
          ? _value.sliderConfig
          : sliderConfig as SliderConfiguration,
      notifier: notifier == freezed ? _value.notifier : notifier as dynamic,
      path: path == freezed ? _value.path : path as String,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      extension: extension == freezed ? _value.extension : extension as String,
      playerEvent: playerEvent == freezed
          ? _value.playerEvent
          : playerEvent as BetterPlayerEventType,
      buffered: buffered == freezed ? _value.buffered : buffered as Duration,
      volume: volume == freezed ? _value.volume : volume as double,
      volumeBeforeMute: volumeBeforeMute == freezed
          ? _value.volumeBeforeMute
          : volumeBeforeMute as double,
      autoPlay: autoPlay == freezed ? _value.autoPlay : autoPlay as bool,
      willLoop: willLoop == freezed ? _value.willLoop : willLoop as bool,
      isFirstTouch:
          isFirstTouch == freezed ? _value.isFirstTouch : isFirstTouch as bool,
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
      moment: moment == freezed ? _value.moment : moment as Duration,
    ));
  }
}

abstract class _$PlaybackStateCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$PlaybackStateCopyWith(
          _PlaybackState value, $Res Function(_PlaybackState) then) =
      __$PlaybackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BetterPlayerDataSourceType sourceType,
      BetterPlayerController controller,
      SliderConfiguration sliderConfig,
      @nullable dynamic notifier,
      String path,
      String fileName,
      String extension,
      BetterPlayerEventType playerEvent,
      Duration buffered,
      double volume,
      double volumeBeforeMute,
      bool autoPlay,
      bool willLoop,
      bool isFirstTouch,
      bool isInitialized,
      bool isLoading,
      bool isPlaying,
      bool isFinished,
      bool isSeeking,
      bool isMute,
      bool isBuffering,
      bool isFullscreen,
      Duration moment});
}

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
    Object sourceType = freezed,
    Object controller = freezed,
    Object sliderConfig = freezed,
    Object notifier = freezed,
    Object path = freezed,
    Object fileName = freezed,
    Object extension = freezed,
    Object playerEvent = freezed,
    Object buffered = freezed,
    Object volume = freezed,
    Object volumeBeforeMute = freezed,
    Object autoPlay = freezed,
    Object willLoop = freezed,
    Object isFirstTouch = freezed,
    Object isInitialized = freezed,
    Object isLoading = freezed,
    Object isPlaying = freezed,
    Object isFinished = freezed,
    Object isSeeking = freezed,
    Object isMute = freezed,
    Object isBuffering = freezed,
    Object isFullscreen = freezed,
    Object moment = freezed,
  }) {
    return _then(_PlaybackState(
      sourceType: sourceType == freezed
          ? _value.sourceType
          : sourceType as BetterPlayerDataSourceType,
      controller: controller == freezed
          ? _value.controller
          : controller as BetterPlayerController,
      sliderConfig: sliderConfig == freezed
          ? _value.sliderConfig
          : sliderConfig as SliderConfiguration,
      notifier: notifier == freezed ? _value.notifier : notifier as dynamic,
      path: path == freezed ? _value.path : path as String,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      extension: extension == freezed ? _value.extension : extension as String,
      playerEvent: playerEvent == freezed
          ? _value.playerEvent
          : playerEvent as BetterPlayerEventType,
      buffered: buffered == freezed ? _value.buffered : buffered as Duration,
      volume: volume == freezed ? _value.volume : volume as double,
      volumeBeforeMute: volumeBeforeMute == freezed
          ? _value.volumeBeforeMute
          : volumeBeforeMute as double,
      autoPlay: autoPlay == freezed ? _value.autoPlay : autoPlay as bool,
      willLoop: willLoop == freezed ? _value.willLoop : willLoop as bool,
      isFirstTouch:
          isFirstTouch == freezed ? _value.isFirstTouch : isFirstTouch as bool,
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
      moment: moment == freezed ? _value.moment : moment as Duration,
    ));
  }
}

class _$_PlaybackState extends _PlaybackState with DiagnosticableTreeMixin {
  const _$_PlaybackState(
      {this.sourceType = BetterPlayerDataSourceType.NETWORK,
      this.controller,
      @required this.sliderConfig,
      @nullable this.notifier,
      this.path = PlaybackState.DEFAULT_PATH,
      this.fileName = PlaybackState.TEST_VIDEO_NAME,
      this.extension = PlaybackState.DEFAULT_EXTENSION,
      this.playerEvent = BetterPlayerEventType.PAUSE,
      this.buffered = Duration.zero,
      this.volume = PlaybackState.INITIAL_VOLUME,
      this.volumeBeforeMute = PlaybackState.INITIAL_VOLUME,
      this.autoPlay = false,
      this.willLoop = false,
      this.isFirstTouch = false,
      this.isInitialized = false,
      this.isLoading = false,
      this.isPlaying = false,
      this.isFinished = false,
      this.isSeeking = false,
      this.isMute = false,
      this.isBuffering = false,
      this.isFullscreen = false,
      this.moment = Duration.zero})
      : assert(sourceType != null),
        assert(sliderConfig != null),
        assert(path != null),
        assert(fileName != null),
        assert(extension != null),
        assert(playerEvent != null),
        assert(buffered != null),
        assert(volume != null),
        assert(volumeBeforeMute != null),
        assert(autoPlay != null),
        assert(willLoop != null),
        assert(isFirstTouch != null),
        assert(isInitialized != null),
        assert(isLoading != null),
        assert(isPlaying != null),
        assert(isFinished != null),
        assert(isSeeking != null),
        assert(isMute != null),
        assert(isBuffering != null),
        assert(isFullscreen != null),
        assert(moment != null),
        super._();

  @JsonKey(defaultValue: BetterPlayerDataSourceType.NETWORK)
  @override
  final BetterPlayerDataSourceType sourceType;
  @override
  final BetterPlayerController controller;
  @override
  final SliderConfiguration sliderConfig;
  @override
  @nullable
  final dynamic notifier;
  @JsonKey(defaultValue: PlaybackState.DEFAULT_PATH)
  @override
  final String path;
  @JsonKey(defaultValue: PlaybackState.TEST_VIDEO_NAME)
  @override
  final String fileName;
  @JsonKey(defaultValue: PlaybackState.DEFAULT_EXTENSION)
  @override
  final String extension;
  @JsonKey(defaultValue: BetterPlayerEventType.PAUSE)
  @override
  final BetterPlayerEventType playerEvent;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration buffered;
  @JsonKey(defaultValue: PlaybackState.INITIAL_VOLUME)
  @override
  final double volume;
  @JsonKey(defaultValue: PlaybackState.INITIAL_VOLUME)
  @override
  final double volumeBeforeMute;
  @JsonKey(defaultValue: false)
  @override
  final bool autoPlay;
  @JsonKey(defaultValue: false)
  @override
  final bool willLoop;
  @JsonKey(defaultValue: false)
  @override
  final bool isFirstTouch;
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
  @override
  final bool isSeeking;
  @JsonKey(defaultValue: false)
  @override
  final bool isMute;
  @JsonKey(defaultValue: false)
  @override
  final bool isBuffering;
  @JsonKey(defaultValue: false)
  @override
  final bool isFullscreen;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration moment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaybackState(sourceType: $sourceType, controller: $controller, sliderConfig: $sliderConfig, notifier: $notifier, path: $path, fileName: $fileName, extension: $extension, playerEvent: $playerEvent, buffered: $buffered, volume: $volume, volumeBeforeMute: $volumeBeforeMute, autoPlay: $autoPlay, willLoop: $willLoop, isFirstTouch: $isFirstTouch, isInitialized: $isInitialized, isLoading: $isLoading, isPlaying: $isPlaying, isFinished: $isFinished, isSeeking: $isSeeking, isMute: $isMute, isBuffering: $isBuffering, isFullscreen: $isFullscreen, moment: $moment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaybackState'))
      ..add(DiagnosticsProperty('sourceType', sourceType))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('sliderConfig', sliderConfig))
      ..add(DiagnosticsProperty('notifier', notifier))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('extension', extension))
      ..add(DiagnosticsProperty('playerEvent', playerEvent))
      ..add(DiagnosticsProperty('buffered', buffered))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('volumeBeforeMute', volumeBeforeMute))
      ..add(DiagnosticsProperty('autoPlay', autoPlay))
      ..add(DiagnosticsProperty('willLoop', willLoop))
      ..add(DiagnosticsProperty('isFirstTouch', isFirstTouch))
      ..add(DiagnosticsProperty('isInitialized', isInitialized))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('isFinished', isFinished))
      ..add(DiagnosticsProperty('isSeeking', isSeeking))
      ..add(DiagnosticsProperty('isMute', isMute))
      ..add(DiagnosticsProperty('isBuffering', isBuffering))
      ..add(DiagnosticsProperty('isFullscreen', isFullscreen))
      ..add(DiagnosticsProperty('moment', moment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaybackState &&
            (identical(other.sourceType, sourceType) ||
                const DeepCollectionEquality()
                    .equals(other.sourceType, sourceType)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
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
            (identical(other.playerEvent, playerEvent) ||
                const DeepCollectionEquality()
                    .equals(other.playerEvent, playerEvent)) &&
            (identical(other.buffered, buffered) ||
                const DeepCollectionEquality()
                    .equals(other.buffered, buffered)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.volumeBeforeMute, volumeBeforeMute) ||
                const DeepCollectionEquality()
                    .equals(other.volumeBeforeMute, volumeBeforeMute)) &&
            (identical(other.autoPlay, autoPlay) ||
                const DeepCollectionEquality()
                    .equals(other.autoPlay, autoPlay)) &&
            (identical(other.willLoop, willLoop) ||
                const DeepCollectionEquality()
                    .equals(other.willLoop, willLoop)) &&
            (identical(other.isFirstTouch, isFirstTouch) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstTouch, isFirstTouch)) &&
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
                    .equals(other.isFullscreen, isFullscreen)) &&
            (identical(other.moment, moment) ||
                const DeepCollectionEquality().equals(other.moment, moment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sourceType) ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(sliderConfig) ^
      const DeepCollectionEquality().hash(notifier) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(playerEvent) ^
      const DeepCollectionEquality().hash(buffered) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(volumeBeforeMute) ^
      const DeepCollectionEquality().hash(autoPlay) ^
      const DeepCollectionEquality().hash(willLoop) ^
      const DeepCollectionEquality().hash(isFirstTouch) ^
      const DeepCollectionEquality().hash(isInitialized) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(isSeeking) ^
      const DeepCollectionEquality().hash(isMute) ^
      const DeepCollectionEquality().hash(isBuffering) ^
      const DeepCollectionEquality().hash(isFullscreen) ^
      const DeepCollectionEquality().hash(moment);

  @override
  _$PlaybackStateCopyWith<_PlaybackState> get copyWith =>
      __$PlaybackStateCopyWithImpl<_PlaybackState>(this, _$identity);
}

abstract class _PlaybackState extends PlaybackState {
  const _PlaybackState._() : super._();
  const factory _PlaybackState(
      {BetterPlayerDataSourceType sourceType,
      BetterPlayerController controller,
      @required SliderConfiguration sliderConfig,
      @nullable dynamic notifier,
      String path,
      String fileName,
      String extension,
      BetterPlayerEventType playerEvent,
      Duration buffered,
      double volume,
      double volumeBeforeMute,
      bool autoPlay,
      bool willLoop,
      bool isFirstTouch,
      bool isInitialized,
      bool isLoading,
      bool isPlaying,
      bool isFinished,
      bool isSeeking,
      bool isMute,
      bool isBuffering,
      bool isFullscreen,
      Duration moment}) = _$_PlaybackState;

  @override
  BetterPlayerDataSourceType get sourceType;
  @override
  BetterPlayerController get controller;
  @override
  SliderConfiguration get sliderConfig;
  @override
  @nullable
  dynamic get notifier;
  @override
  String get path;
  @override
  String get fileName;
  @override
  String get extension;
  @override
  BetterPlayerEventType get playerEvent;
  @override
  Duration get buffered;
  @override
  double get volume;
  @override
  double get volumeBeforeMute;
  @override
  bool get autoPlay;
  @override
  bool get willLoop;
  @override
  bool get isFirstTouch;
  @override
  bool get isInitialized;
  @override
  bool get isLoading;
  @override
  bool get isPlaying;
  @override
  bool get isFinished;
  @override
  bool get isSeeking;
  @override
  bool get isMute;
  @override
  bool get isBuffering;
  @override
  bool get isFullscreen;
  @override
  Duration get moment;
  @override
  _$PlaybackStateCopyWith<_PlaybackState> get copyWith;
}
