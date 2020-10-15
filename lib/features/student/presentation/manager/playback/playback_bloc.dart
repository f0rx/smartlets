import 'dart:async';
import 'dart:io';

import 'package:better_player/better_player.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartlets/features/student/presentation/widgets/student_widgets.dart';
import 'package:smartlets/utils/utils.dart';

part 'playback_bloc.freezed.dart';
part 'playback_event.dart';
part 'playback_state.dart';

@Injectable()
class PlaybackBloc extends Bloc<PlaybackEvent, PlaybackState> {
  final PlaybackState prevState;
  BetterPlayerController controller;

  PlaybackBloc([@factoryParam this.prevState]) : super(prevState ?? PlaybackState.init());

  @override
  Stream<PlaybackState> mapEventToState(
    PlaybackEvent event,
  ) async* {
    yield state.copyWith(isLoading: true);

    yield* event.map(
      initializeLocalVideo: (e) async* {
        yield* mapInitializeLocalVideo(e);
      },
      setupVideoPlayer: (e) async* {
        yield* mapSetupVideoPlayer(e);
      },
      refreshPlayer: (e) async* {
        yield e.state;
      },
      play: (e) async* {
        yield* mapPlay(e);
      },
      pause: (e) async* {
        yield* mapPause(e);
      },
      changePath: (e) async* {
        yield state.copyWith(path: e.value);
      },
      seek: (e) async* {
        await controller.seekTo(e.progress);
      },
      mute: (e) async* {
        yield* mapMuteVolume(e);
      },
      unMute: (e) async* {
        yield* mapUnMuteVolume(e);
      },
      toggleFullScreen: (e) async* {
        yield* mapToggleFullScreen(e);
      },
      enterFullScreen: (e) async* {
        yield* mapEnterFullScreen(e);
      },
      changeVolume: (e) async* {
        yield* mapChangeVolume(e);
      },
      increaseSliderSize: (e) async* {
        yield* mapIncreaseSliderSize(e);
      },
      decreaseSliderSize: (e) async* {
        yield* mapDecreaseSliderSize(e);
      },
      fastForward: (e) async* {
        yield* mapFastForward(e);
      },
      rewind: (e) async* {
        yield* mapRewind(e);
      },
      exitFullScreen: (e) async* {
        yield* mapExitFullScreen(e);
      },
    );

    yield state.copyWith(isLoading: false);
  }

  Stream<PlaybackState> mapInitializeLocalVideo(_InitializeLocalVideo e) async* {
    try {
      final content = await rootBundle.load("${AppAssets.ASSETS_DIR}/${state.fileName}.${state.extension}");
      final directory = await getExternalStorageDirectory();
      final file = File("${directory.path}/${state.fileName}.${state.extension}");
      file.writeAsBytesSync(content.buffer.asUint8List());

      yield state.copyWith(path: file.path);

      add(PlaybackEvent.setupVideoPlayer(file.path, type: BetterPlayerDataSourceType.FILE));
    } catch (e) {
      print("Error parsing local video => $e");
    }
  }

  Stream<PlaybackState> mapSetupVideoPlayer(_SetupVideoController e) async* {
    final dataSource = BetterPlayerDataSource(e.type, e.url);

    // if (e.isFullScreen){
    //   print("It's a fullscreen something ===> ${state.controller} && Controller var = $controller");
    //   controller = e.oldState.controller;
    //   yield state.copyWith(controller: controller);
    //   // yield state;
    // }

    controller ??= BetterPlayerController(
      BetterPlayerConfiguration(
        controlsConfiguration: BetterPlayerControlsConfiguration(
          enableProgressText: true,
          enablePlaybackSpeed: true,
          enableSubtitles: true,
          enableFullscreen: true,
          customControls: VideoPlayerControls(),
        ),
        errorBuilder: (context, message) => Container(),
        allowedScreenSleep: false,
        aspectRatio: PlaybackState.ASPECT_RATIO,
        eventListener: (event) async {
          Duration moment;
          Duration buffered;

          // print("Event Listener still running??");

          try {
            moment = await controller?.videoPlayerController?.position;
            buffered = controller.videoPlayerController?.value?.buffered[0]?.end;

            // print("Value in Notifier = ${controller.videoPlayerController?.value}");
          } on RangeError {
            buffered = Duration.zero;
          } on PlatformException catch (e) {
            buffered = Duration.zero;
            print("ERROR OCCURRED AT RUNTIME: $e");
          }

          add(PlaybackEvent.refreshPlayer(
            state.copyWith(
              moment: moment ?? state.moment,
              buffered: buffered,
              notifier: controller.videoPlayerController?.value,
              isPlaying: await controller.isPlaying() && event.betterPlayerEventType != BetterPlayerEventType.FINISHED,
              isInitialized: controller.isVideoInitialized(),
              playerEvent: event.betterPlayerEventType,
              isFinished: event.betterPlayerEventType == BetterPlayerEventType.FINISHED,
            ),
          ));

          // Future.delayed();

          if (event.betterPlayerEventType == BetterPlayerEventType.FINISHED) {
            await Future.delayed(Duration(seconds: 2));
            await controller?.seekTo(Duration.zero);
            add(PlaybackEvent.play());
          }
        },
      ),
      betterPlayerDataSource: dataSource,
    );

    add(PlaybackEvent.changeVolume(state.volume));

    yield state.copyWith(
      controller: controller,
      sourceType: e.type,
    );
  }

  Stream<PlaybackState> mapMuteVolume(_MuteVideo e) async* {
    await controller.setVolume(0.0);
    yield state.copyWith(volumeBeforeMute: state.volume, volume: 0.0);
  }

  Stream<PlaybackState> mapUnMuteVolume(_UnMuteVideo e) async* {
    await controller.setVolume(state.volumeBeforeMute);
    yield state.copyWith(volume: state.volumeBeforeMute);
  }

  Stream<PlaybackState> mapPlay(_PlayVideo e) async* {
    if (!e.firstTouch.isNull && e.firstTouch) {
      yield state.copyWith(isFirstTouch: true);
    }
    await controller.play();
  }

  Stream<PlaybackState> mapPause(_PauseVideo e) async* {
    await controller.pause();
  }

  Stream<PlaybackState> mapFastForward(_FastForwardVideo e) async* {
    Duration moment = state.moment;
    if (!state.isFinished) {
      moment += e.moment;
      await controller.seekTo(moment);
    }
  }

  Stream<PlaybackState> mapRewind(_RewindVideo e) async* {
    Duration moment = state.moment;
    if (!state.isFinished) {
      moment -= e.moment;
      await controller.seekTo(moment);
    }
  }

  Stream<PlaybackState> mapEnterFullScreen(_EnterFullScreen e) async* {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    // if (Platform.isAndroid) {
    //   SystemChrome.setPreferredOrientations([
    //     DeviceOrientation.landscapeLeft,
    //     DeviceOrientation.landscapeRight,
    //   ]);
    // }

    yield state.copyWith(isFullscreen: true);
  }

  Stream<PlaybackState> mapExitFullScreen(_ExitFullScreen e) async* {
    yield state.copyWith(isFullscreen: false);
  }

  Stream<PlaybackState> mapToggleFullScreen(_ToggleFullScreen e) async* {
    yield state.copyWith(isFullscreen: !state.isFullscreen);
  }

  Stream<PlaybackState> mapChangeVolume(_SetVolume e) async* {
    await controller.setVolume(e.volume);
    yield state.copyWith(volume: e.volume);
  }

  Stream<PlaybackState> mapIncreaseSliderSize(_IncreaseSliderComponentSize e) async* {}

  Stream<PlaybackState> mapDecreaseSliderSize(_DecreaseSliderComponentSize e) async* {}
}
