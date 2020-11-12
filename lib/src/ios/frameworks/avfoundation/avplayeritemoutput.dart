// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avbase.dart';
// You can uncomment this line when this package is ready.
// import 'package:foundation/foundation.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmtime.dart';
// You can uncomment this line when this package is ready.
// import 'package:corevideo/cvpixelbuffer.dart';
// You can uncomment this line when this package is ready.
// import 'package:corevideo/cvhosttime.dart';

@NativeAvailable(macos: '10.8', ios: '6.0', tvos: '9.0', watchos: '1.0')
@native
class AVPlayerItemOutput extends NSObject {
  AVPlayerItemOutput([Class isa]) : super(isa ?? Class('AVPlayerItemOutput'));
  AVPlayerItemOutput.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  @NativeAvailable(macos: '10.8', ios: '6.0', tvos: '9.0')
  @NativeUnavailable(watchos)
  bool get suppressesPlayerRendering {
    return perform(SEL('suppressesPlayerRendering'));
  }

  @NativeAvailable(macos: '10.8', ios: '6.0', tvos: '9.0')
  @NativeUnavailable(watchos)
  set suppressesPlayerRendering(bool suppressesPlayerRendering) =>
      perform(SEL('setSuppressesPlayerRendering:'),
          args: [suppressesPlayerRendering]);

  CMTime itemTimeForHostTime(CFTimeInterval hostTimeInSeconds) {
    Pointer<Void> result = perform(SEL('itemTimeForHostTime:'),
        args: [hostTimeInSeconds], decodeRetVal: false);
    return CMTime.fromPointer(result);
  }

  CMTime itemTimeForMachAbsoluteTime(int machAbsoluteTime) {
    Pointer<Void> result = perform(SEL('itemTimeForMachAbsoluteTime:'),
        args: [machAbsoluteTime], decodeRetVal: false);
    return CMTime.fromPointer(result);
  }

  @NativeAvailable(macos: '10.8')
  @NativeUnavailable(ios, tvos, watchos)
  CMTime itemTimeForCVTimeStamp(CVTimeStamp timestamp) {
    Pointer<Void> result = perform(SEL('itemTimeForCVTimeStamp:'),
        args: [timestamp], decodeRetVal: false);
    return CMTime.fromPointer(result);
  }
}

@NativeAvailable(macos: '10.8', ios: '6.0', tvos: '9.0')
@NativeUnavailable(watchos)
@native
class AVPlayerItemVideoOutput extends AVPlayerItemOutput {
  AVPlayerItemVideoOutput([Class isa])
      : super(isa ?? Class('AVPlayerItemVideoOutput'));
  AVPlayerItemVideoOutput.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);

  AVPlayerItemOutputPullDelegate get delegate {
    Pointer<Void> result = perform(SEL('delegate'), decodeRetVal: false);
    return AVPlayerItemOutputPullDelegate.fromPointer(result);
  }

  set delegate(AVPlayerItemOutputPullDelegate delegate) =>
      perform(SEL('setDelegate:'), args: [delegate]);

  dispatch_queue_t get delegateQueue {
    Pointer<Void> result = perform(SEL('delegateQueue'), decodeRetVal: false);
    return dispatch_queue_t.fromPointer(result);
  }

  set delegateQueue(dispatch_queue_t delegateQueue) =>
      perform(SEL('setDelegateQueue:'), args: [delegateQueue]);
  AVPlayerItemVideoOutput.initWithPixelBufferAttributes(
      {NSObject pixelBufferAttributes})
      : super.fromPointer(
            _initWithPixelBufferAttributes(pixelBufferAttributes));

  static Pointer<Void> _initWithPixelBufferAttributes(
      {NSObject pixelBufferAttributes}) {
    Pointer<Void> target = alloc(Class('AVPlayerItemVideoOutput'));
    SEL sel = SEL('initWithPixelBufferAttributes:');
    return msgSend(target, sel,
        args: [pixelBufferAttributes], decodeRetVal: false);
  }

  AVPlayerItemVideoOutput.initWithOutputSettings({NSObject outputSettings})
      : super.fromPointer(_initWithOutputSettings(outputSettings));

  static Pointer<Void> _initWithOutputSettings({NSObject outputSettings}) {
    Pointer<Void> target = alloc(Class('AVPlayerItemVideoOutput'));
    SEL sel = SEL('initWithOutputSettings:');
    return msgSend(target, sel, args: [outputSettings], decodeRetVal: false);
  }

  bool hasNewPixelBufferForItemTime(CMTime itemTime) {
    return perform(SEL('hasNewPixelBufferForItemTime:'), args: [itemTime]);
  }

  CVPixelBufferRef copyPixelBufferForItemTimeItemTimeForDisplay(CMTime itemTime,
      {CMTime outItemTimeForDisplay}) {
    Pointer<Void> result = perform(
        SEL('copyPixelBufferForItemTime:itemTimeForDisplay:'),
        args: [itemTime, outItemTimeForDisplay],
        decodeRetVal: false);
    return CVPixelBufferRef.fromPointer(result);
  }

  void setDelegateQueue(
      {AVPlayerItemOutputPullDelegate delegate,
      dispatch_queue_t delegateQueue}) {
    perform(SEL('setDelegate:queue:'), args: [delegate, delegateQueue]);
  }

  void requestNotificationOfMediaDataChangeWithAdvanceInterval(
      NSTimeInterval interval) {
    perform(SEL('requestNotificationOfMediaDataChangeWithAdvanceInterval:'),
        args: [interval]);
  }
}

abstract class AVPlayerItemOutputPullDelegate {
  registerAVPlayerItemOutputPullDelegate() {
    registerProtocolCallback(this, outputMediaDataWillChange,
        'outputMediaDataWillChange:', AVPlayerItemOutputPullDelegate);
    registerProtocolCallback(this, outputSequenceWasFlushed,
        'outputSequenceWasFlushed:', AVPlayerItemOutputPullDelegate);
  }

  @NativeAvailable(macos: '10.8', ios: '6.0', tvos: '9.0', watchos: '1.0')
  void outputMediaDataWillChange(AVPlayerItemOutput sender);
  @NativeAvailable(macos: '10.8', ios: '6.0', tvos: '9.0', watchos: '1.0')
  void outputSequenceWasFlushed(AVPlayerItemOutput output);
}

@NativeAvailable(macos: '10.9', ios: '7.0', tvos: '9.0')
@NativeUnavailable(watchos)
@native
class AVPlayerItemLegibleOutput extends AVPlayerItemOutput {
  AVPlayerItemLegibleOutput([Class isa])
      : super(isa ?? Class('AVPlayerItemLegibleOutput'));
  AVPlayerItemLegibleOutput.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);

  AVPlayerItemLegibleOutputPushDelegate get delegate {
    Pointer<Void> result = perform(SEL('delegate'), decodeRetVal: false);
    return AVPlayerItemLegibleOutputPushDelegate.fromPointer(result);
  }

  set delegate(AVPlayerItemLegibleOutputPushDelegate delegate) =>
      perform(SEL('setDelegate:'), args: [delegate]);

  dispatch_queue_t get delegateQueue {
    Pointer<Void> result = perform(SEL('delegateQueue'), decodeRetVal: false);
    return dispatch_queue_t.fromPointer(result);
  }

  set delegateQueue(dispatch_queue_t delegateQueue) =>
      perform(SEL('setDelegateQueue:'), args: [delegateQueue]);

  NSTimeInterval get advanceIntervalForDelegateInvocation {
    Pointer<Void> result = perform(SEL('advanceIntervalForDelegateInvocation'),
        decodeRetVal: false);
    return NSTimeInterval.fromPointer(result);
  }

  set advanceIntervalForDelegateInvocation(
          NSTimeInterval advanceIntervalForDelegateInvocation) =>
      perform(SEL('setAdvanceIntervalForDelegateInvocation:'),
          args: [advanceIntervalForDelegateInvocation]);

  void setDelegateQueue(
      {AVPlayerItemLegibleOutputPushDelegate delegate,
      dispatch_queue_t delegateQueue}) {
    perform(SEL('setDelegate:queue:'), args: [delegate, delegateQueue]);
  }
}

extension AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_NativeRepresentation
    on AVPlayerItemLegibleOutput {
  AVPlayerItemLegibleOutput_NativeRepresentation
      initWithMediaSubtypesForNativeRepresentation(NSNumber subtypes) {
    Pointer<Void> result = perform(
        SEL('initWithMediaSubtypesForNativeRepresentation:'),
        args: [subtypes],
        decodeRetVal: false);
    return AVPlayerItemLegibleOutput_NativeRepresentation.fromPointer(result);
  }
}

extension AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_TextStylingResolution
    on AVPlayerItemLegibleOutput {
  AVPlayerItemLegibleOutputTextStylingResolution get textStylingResolution {
    Pointer<Void> result =
        perform(SEL('textStylingResolution'), decodeRetVal: false);
    return AVPlayerItemLegibleOutputTextStylingResolution.fromPointer(result);
  }

  set textStylingResolution(
          AVPlayerItemLegibleOutputTextStylingResolution
              textStylingResolution) =>
      perform(SEL('setTextStylingResolution:'), args: [textStylingResolution]);
}

abstract class AVPlayerItemLegibleOutputPushDelegate {
  registerAVPlayerItemLegibleOutputPushDelegate() {
    registerProtocolCallback(
        this,
        legibleOutputDidOutputAttributedStringsNativeSampleBuffersForItemTime,
        'legibleOutput:didOutputAttributedStrings:nativeSampleBuffers:forItemTime:',
        AVPlayerItemLegibleOutputPushDelegate);
  }

  @NativeAvailable(macos: '10.9', ios: '7.0', tvos: '9.0')
  @NativeUnavailable(watchos)
  void legibleOutputDidOutputAttributedStringsNativeSampleBuffersForItemTime(
      AVPlayerItemLegibleOutput output,
      NSAttributedString strings,
      List nativeSamples,
      CMTime itemTime);
}

abstract class AVPlayerItemOutputPushDelegate {
  registerAVPlayerItemOutputPushDelegate() {
    registerProtocolCallback(this, outputSequenceWasFlushed,
        'outputSequenceWasFlushed:', AVPlayerItemOutputPushDelegate);
  }

  void outputSequenceWasFlushed(AVPlayerItemOutput output);
}

@NativeAvailable(macos: '10.10', ios: '8.0', tvos: '9.0', watchos: '1.0')
@native
class AVPlayerItemMetadataOutput extends AVPlayerItemOutput {
  AVPlayerItemMetadataOutput([Class isa])
      : super(isa ?? Class('AVPlayerItemMetadataOutput'));
  AVPlayerItemMetadataOutput.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);

  AVPlayerItemMetadataOutputPushDelegate get delegate {
    Pointer<Void> result = perform(SEL('delegate'), decodeRetVal: false);
    return AVPlayerItemMetadataOutputPushDelegate.fromPointer(result);
  }

  set delegate(AVPlayerItemMetadataOutputPushDelegate delegate) =>
      perform(SEL('setDelegate:'), args: [delegate]);

  dispatch_queue_t get delegateQueue {
    Pointer<Void> result = perform(SEL('delegateQueue'), decodeRetVal: false);
    return dispatch_queue_t.fromPointer(result);
  }

  set delegateQueue(dispatch_queue_t delegateQueue) =>
      perform(SEL('setDelegateQueue:'), args: [delegateQueue]);

  NSTimeInterval get advanceIntervalForDelegateInvocation {
    Pointer<Void> result = perform(SEL('advanceIntervalForDelegateInvocation'),
        decodeRetVal: false);
    return NSTimeInterval.fromPointer(result);
  }

  set advanceIntervalForDelegateInvocation(
          NSTimeInterval advanceIntervalForDelegateInvocation) =>
      perform(SEL('setAdvanceIntervalForDelegateInvocation:'),
          args: [advanceIntervalForDelegateInvocation]);
  AVPlayerItemMetadataOutput({String identifiers})
      : super.fromPointer(_initWithIdentifiers(identifiers));

  static Pointer<Void> _initWithIdentifiers({String identifiers}) {
    Pointer<Void> target = alloc(Class('AVPlayerItemMetadataOutput'));
    SEL sel = SEL('initWithIdentifiers:');
    return msgSend(target, sel, args: [identifiers], decodeRetVal: false);
  }

  void setDelegateQueue(
      {AVPlayerItemMetadataOutputPushDelegate delegate,
      dispatch_queue_t delegateQueue}) {
    perform(SEL('setDelegate:queue:'), args: [delegate, delegateQueue]);
  }
}

abstract class AVPlayerItemMetadataOutputPushDelegate {
  registerAVPlayerItemMetadataOutputPushDelegate() {
    registerProtocolCallback(
        this,
        metadataOutputDidOutputTimedMetadataGroupsFromPlayerItemTrack,
        'metadataOutput:didOutputTimedMetadataGroups:fromPlayerItemTrack:',
        AVPlayerItemMetadataOutputPushDelegate);
  }

  @NativeAvailable(macos: '10.10', ios: '8.0', tvos: '9.0', watchos: '1.0')
  void metadataOutputDidOutputTimedMetadataGroupsFromPlayerItemTrack(
      AVPlayerItemMetadataOutput output, AVTimedMetadataGroup groups,
      {AVPlayerItemTrack track});
}
// You can uncomment this line when this package is ready.
// import 'package:avfcore/avplayeritemoutput.dart';