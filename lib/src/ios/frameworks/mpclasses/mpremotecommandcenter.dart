// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';

import 'mpremotecommand.dart';
// You can uncomment this line when this package is ready.
// import 'package:mediaplayer/mediaplayerdefines.dart';
// You can uncomment this line when this package is ready.
// import 'package:foundation/foundation.dart';

@native
class MPRemoteCommandCenter extends NSObject {
  MPRemoteCommandCenter([Class isa])
      : super(isa ?? Class('MPRemoteCommandCenter'));
  MPRemoteCommandCenter.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  MPRemoteCommand get pauseCommand {
    Pointer<Void> result =
        perform(SEL('pauseCommand'), decodeRetVal: false) as Pointer<Void>;
    return MPRemoteCommand.fromPointer(result);
  }

  set pauseCommand(MPRemoteCommand pauseCommand) =>
      perform(SEL('setPauseCommand:'), args: <dynamic>[pauseCommand]);

  // MPRemoteCommand get playCommand {
  //   Pointer<Void> result = perform(SEL('playCommand'), decodeRetVal: false);
  //   return MPRemoteCommand.fromPointer(result);
  // }

  // set playCommand(MPRemoteCommand playCommand) =>
  //     perform(SEL('setPlayCommand:'), args: [playCommand]);

  // MPRemoteCommand get stopCommand {
  //   Pointer<Void> result = perform(SEL('stopCommand'), decodeRetVal: false);
  //   return MPRemoteCommand.fromPointer(result);
  // }

  // set stopCommand(MPRemoteCommand stopCommand) =>
  //     perform(SEL('setStopCommand:'), args: [stopCommand]);

  MPRemoteCommand get togglePlayPauseCommand {
    Pointer<Void> result =
        perform(SEL('togglePlayPauseCommand'), decodeRetVal: false)
            as Pointer<Void>;
    return MPRemoteCommand.fromPointer(result);
  }

  set togglePlayPauseCommand(MPRemoteCommand togglePlayPauseCommand) =>
      perform(SEL('setTogglePlayPauseCommand:'),
          args: <dynamic>[togglePlayPauseCommand]);

  // MPRemoteCommand get enableLanguageOptionCommand {
  //   Pointer<Void> result =
  //       perform(SEL('enableLanguageOptionCommand'), decodeRetVal: false);
  //   return MPRemoteCommand.fromPointer(result);
  // }

  // set enableLanguageOptionCommand(
  //         MPRemoteCommand enableLanguageOptionCommand) =>
  //     perform(SEL('setEnableLanguageOptionCommand:'),
  //         args: [enableLanguageOptionCommand]);

  // MPRemoteCommand get disableLanguageOptionCommand {
  //   Pointer<Void> result =
  //       perform(SEL('disableLanguageOptionCommand'), decodeRetVal: false);
  //   return MPRemoteCommand.fromPointer(result);
  // }

  // set disableLanguageOptionCommand(
  //         MPRemoteCommand disableLanguageOptionCommand) =>
  //     perform(SEL('setDisableLanguageOptionCommand:'),
  //         args: [disableLanguageOptionCommand]);

  // MPChangePlaybackRateCommand get changePlaybackRateCommand {
  //   Pointer<Void> result =
  //       perform(SEL('changePlaybackRateCommand'), decodeRetVal: false);
  //   return MPChangePlaybackRateCommand.fromPointer(result);
  // }

  // set changePlaybackRateCommand(
  //         MPChangePlaybackRateCommand changePlaybackRateCommand) =>
  //     perform(SEL('setChangePlaybackRateCommand:'),
  //         args: [changePlaybackRateCommand]);

  // MPChangeRepeatModeCommand get changeRepeatModeCommand {
  //   Pointer<Void> result =
  //       perform(SEL('changeRepeatModeCommand'), decodeRetVal: false);
  //   return MPChangeRepeatModeCommand.fromPointer(result);
  // }

  // set changeRepeatModeCommand(
  //         MPChangeRepeatModeCommand changeRepeatModeCommand) =>
  //     perform(SEL('setChangeRepeatModeCommand:'),
  //         args: [changeRepeatModeCommand]);

  // MPChangeShuffleModeCommand get changeShuffleModeCommand {
  //   Pointer<Void> result =
  //       perform(SEL('changeShuffleModeCommand'), decodeRetVal: false);
  //   return MPChangeShuffleModeCommand.fromPointer(result);
  // }

  // set changeShuffleModeCommand(
  //         MPChangeShuffleModeCommand changeShuffleModeCommand) =>
  //     perform(SEL('setChangeShuffleModeCommand:'),
  //         args: [changeShuffleModeCommand]);

  MPRemoteCommand get nextTrackCommand {
    Pointer<Void> result =
        perform(SEL('nextTrackCommand'), decodeRetVal: false) as Pointer<Void>;
    return MPRemoteCommand.fromPointer(result);
  }

  set nextTrackCommand(MPRemoteCommand nextTrackCommand) =>
      perform(SEL('setNextTrackCommand:'), args: <dynamic>[nextTrackCommand]);

  MPRemoteCommand get previousTrackCommand {
    Pointer<Void> result =
        perform(SEL('previousTrackCommand'), decodeRetVal: false)
            as Pointer<Void>;
    return MPRemoteCommand.fromPointer(result);
  }

  set previousTrackCommand(MPRemoteCommand previousTrackCommand) =>
      perform(SEL('setPreviousTrackCommand:'),
          args: <dynamic>[previousTrackCommand]);

  // MPSkipIntervalCommand get skipForwardCommand {
  //   Pointer<Void> result =
  //       perform(SEL('skipForwardCommand'), decodeRetVal: false);
  //   return MPSkipIntervalCommand.fromPointer(result);
  // }

  // set skipForwardCommand(MPSkipIntervalCommand skipForwardCommand) =>
  //     perform(SEL('setSkipForwardCommand:'), args: [skipForwardCommand]);

  // MPSkipIntervalCommand get skipBackwardCommand {
  //   Pointer<Void> result =
  //       perform(SEL('skipBackwardCommand'), decodeRetVal: false);
  //   return MPSkipIntervalCommand.fromPointer(result);
  // }

  // set skipBackwardCommand(MPSkipIntervalCommand skipBackwardCommand) =>
  //     perform(SEL('setSkipBackwardCommand:'), args: [skipBackwardCommand]);

  // MPRemoteCommand get seekForwardCommand {
  //   Pointer<Void> result =
  //       perform(SEL('seekForwardCommand'), decodeRetVal: false);
  //   return MPRemoteCommand.fromPointer(result);
  // }

  // set seekForwardCommand(MPRemoteCommand seekForwardCommand) =>
  //     perform(SEL('setSeekForwardCommand:'), args: [seekForwardCommand]);

  // MPRemoteCommand get seekBackwardCommand {
  //   Pointer<Void> result =
  //       perform(SEL('seekBackwardCommand'), decodeRetVal: false);
  //   return MPRemoteCommand.fromPointer(result);
  // }

  // set seekBackwardCommand(MPRemoteCommand seekBackwardCommand) =>
  //     perform(SEL('setSeekBackwardCommand:'), args: [seekBackwardCommand]);

  // MPChangePlaybackPositionCommand get changePlaybackPositionCommand {
  //   Pointer<Void> result =
  //       perform(SEL('changePlaybackPositionCommand'), decodeRetVal: false);
  //   return MPChangePlaybackPositionCommand.fromPointer(result);
  // }

  // set changePlaybackPositionCommand(
  //         MPChangePlaybackPositionCommand changePlaybackPositionCommand) =>
  //     perform(SEL('setChangePlaybackPositionCommand:'),
  //         args: [changePlaybackPositionCommand]);

  // MPRatingCommand get ratingCommand {
  //   Pointer<Void> result = perform(SEL('ratingCommand'), decodeRetVal: false);
  //   return MPRatingCommand.fromPointer(result);
  // }

  // set ratingCommand(MPRatingCommand ratingCommand) =>
  //     perform(SEL('setRatingCommand:'), args: [ratingCommand]);

  // MPFeedbackCommand get likeCommand {
  //   Pointer<Void> result = perform(SEL('likeCommand'), decodeRetVal: false);
  //   return MPFeedbackCommand.fromPointer(result);
  // }

  // set likeCommand(MPFeedbackCommand likeCommand) =>
  //     perform(SEL('setLikeCommand:'), args: [likeCommand]);

  // MPFeedbackCommand get dislikeCommand {
  //   Pointer<Void> result = perform(SEL('dislikeCommand'), decodeRetVal: false);
  //   return MPFeedbackCommand.fromPointer(result);
  // }

  // set dislikeCommand(MPFeedbackCommand dislikeCommand) =>
  //     perform(SEL('setDislikeCommand:'), args: [dislikeCommand]);

  // MPFeedbackCommand get bookmarkCommand {
  //   Pointer<Void> result = perform(SEL('bookmarkCommand'), decodeRetVal: false);
  //   return MPFeedbackCommand.fromPointer(result);
  // }

  // set bookmarkCommand(MPFeedbackCommand bookmarkCommand) =>
  //     perform(SEL('setBookmarkCommand:'), args: [bookmarkCommand]);

  static MPRemoteCommandCenter sharedCommandCenter() {
    Pointer<Void> result = Class('MPRemoteCommandCenter')
            .perform(SEL('sharedCommandCenter'), decodeRetVal: false)
        as Pointer<Void>;
    return MPRemoteCommandCenter.fromPointer(result);
  }
}