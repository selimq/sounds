// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avcaptureoutputbase.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avvideosettings.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmsamplebuffer.dart';

@NativeAvailable(macos: '10.7', ios: '4.0')
@native
class AVCaptureFileOutput extends AVCaptureOutput {
  AVCaptureFileOutput([Class isa]) : super(isa ?? Class('AVCaptureFileOutput'));
  AVCaptureFileOutput.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  @NativeUnavailable(ios, watchos, tvos)
  AVCaptureFileOutputDelegate get delegate {
Pointer<Void> result = perform(SEL('delegate'), decodeRetVal: false);
    return AVCaptureFileOutputDelegate.fromPointer(result);

}
  @NativeUnavailable(ios, watchos, tvos)
  set delegate(AVCaptureFileOutputDelegate delegate) => perform(SEL('setDelegate:'), args: [delegate]);
  
  NSURL get outputFileURL {
Pointer<Void> result = perform(SEL('outputFileURL'), decodeRetVal: false);
    return NSURL.fromPointer(result);

}
  
  set outputFileURL(NSURL outputFileURL) => perform(SEL('setOutputFileURL:'), args: [outputFileURL]);
  
  bool get recording {
return perform(SEL('recording'));

}
  
  set recording(bool recording) => perform(SEL('setRecording:'), args: [recording]);
  
  bool get __WATCHOS_PROHIBITED {
return perform(SEL('__WATCHOS_PROHIBITED'));

}
  
  set __WATCHOS_PROHIBITED(bool __WATCHOS_PROHIBITED) => perform(SEL('set__WATCHOS_PROHIBITED:'), args: [__WATCHOS_PROHIBITED]);
  
  CMTime get recordedDuration {
Pointer<Void> result = perform(SEL('recordedDuration'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set recordedDuration(CMTime recordedDuration) => perform(SEL('setRecordedDuration:'), args: [recordedDuration]);
  
  int get recordedFileSize {
return perform(SEL('recordedFileSize'));

}
  
  set recordedFileSize(int recordedFileSize) => perform(SEL('setRecordedFileSize:'), args: [recordedFileSize]);
  
  CMTime get maxRecordedDuration {
Pointer<Void> result = perform(SEL('maxRecordedDuration'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set maxRecordedDuration(CMTime maxRecordedDuration) => perform(SEL('setMaxRecordedDuration:'), args: [maxRecordedDuration]);
  
  int get maxRecordedFileSize {
return perform(SEL('maxRecordedFileSize'));

}
  
  set maxRecordedFileSize(int maxRecordedFileSize) => perform(SEL('setMaxRecordedFileSize:'), args: [maxRecordedFileSize]);
  
  int get minFreeDiskSpaceLimit {
return perform(SEL('minFreeDiskSpaceLimit'));

}
  
  set minFreeDiskSpaceLimit(int minFreeDiskSpaceLimit) => perform(SEL('setMinFreeDiskSpaceLimit:'), args: [minFreeDiskSpaceLimit]);
  
  void startRecordingToOutputFileURLRecordingDelegate(NSURL outputFileURL, AVCaptureFileOutputRecordingDelegate delegate) {
     perform(SEL('startRecordingToOutputFileURL:recordingDelegate:'), args: [outputFileURL,delegate]);
  }
  
  void stopRecording() {
     perform(SEL('stopRecording'));
  }
  
  void pauseRecording() {
     perform(SEL('pauseRecording'));
  }
  
  void resumeRecording() {
     perform(SEL('resumeRecording'));
  }

}

@NativeAvailable(macos: '10.7', ios: '4.0')
abstract class AVCaptureFileOutputRecordingDelegate {
  registerAVCaptureFileOutputRecordingDelegate() {
    registerProtocolCallback(this, captureOutputDidStartRecordingToOutputFileAtURLFromConnections, 'captureOutput:didStartRecordingToOutputFileAtURL:fromConnections:', AVCaptureFileOutputRecordingDelegate);
    registerProtocolCallback(this, captureOutputDidPauseRecordingToOutputFileAtURLFromConnections, 'captureOutput:didPauseRecordingToOutputFileAtURL:fromConnections:', AVCaptureFileOutputRecordingDelegate);
    registerProtocolCallback(this, captureOutputDidResumeRecordingToOutputFileAtURLFromConnections, 'captureOutput:didResumeRecordingToOutputFileAtURL:fromConnections:', AVCaptureFileOutputRecordingDelegate);
    registerProtocolCallback(this, captureOutputWillFinishRecordingToOutputFileAtURLFromConnectionsError, 'captureOutput:willFinishRecordingToOutputFileAtURL:fromConnections:error:', AVCaptureFileOutputRecordingDelegate);
    registerProtocolCallback(this, captureOutputDidFinishRecordingToOutputFileAtURLFromConnectionsError, 'captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error:', AVCaptureFileOutputRecordingDelegate);
  }
  
  void captureOutputDidStartRecordingToOutputFileAtURLFromConnections(AVCaptureFileOutput output, NSURL fileURL, AVCaptureConnection connections);  @NativeUnavailable(ios, watchos, tvos)
  void captureOutputDidPauseRecordingToOutputFileAtURLFromConnections(AVCaptureFileOutput output, NSURL fileURL, AVCaptureConnection connections);  @NativeUnavailable(ios, watchos, tvos)
  void captureOutputDidResumeRecordingToOutputFileAtURLFromConnections(AVCaptureFileOutput output, NSURL fileURL, AVCaptureConnection connections);  @NativeUnavailable(ios, watchos, tvos)
  void captureOutputWillFinishRecordingToOutputFileAtURLFromConnectionsError(AVCaptureFileOutput output, NSURL fileURL, AVCaptureConnection connections, {NSError error});  
  void captureOutputDidFinishRecordingToOutputFileAtURLFromConnectionsError(AVCaptureFileOutput output, NSURL outputFileURL, AVCaptureConnection connections, {NSError error});
}

@NativeAvailable(macos: '10.7') @NativeUnavailable(ios, watchos, tvos)
abstract class AVCaptureFileOutputDelegate {
  registerAVCaptureFileOutputDelegate() {
    registerProtocolCallback(this, captureOutputShouldProvideSampleAccurateRecordingStart, 'captureOutputShouldProvideSampleAccurateRecordingStart:', AVCaptureFileOutputDelegate);
    registerProtocolCallback(this, captureOutputDidOutputSampleBufferFromConnection, 'captureOutput:didOutputSampleBuffer:fromConnection:', AVCaptureFileOutputDelegate);
  }
  @NativeAvailable(macos: '10.8') @NativeUnavailable(ios, watchos, tvos)
  bool captureOutputShouldProvideSampleAccurateRecordingStart(AVCaptureOutput output);  
  void captureOutputDidOutputSampleBufferFromConnection(AVCaptureFileOutput output, CMSampleBufferRef sampleBuffer, AVCaptureConnection connection);
}

@NativeAvailable(macos: '10.7', ios: '4.0')
@native
class AVCaptureMovieFileOutput extends AVCaptureFileOutput {
  AVCaptureMovieFileOutput([Class isa]) : super(isa ?? Class('AVCaptureMovieFileOutput'));
  AVCaptureMovieFileOutput.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  CMTime get movieFragmentInterval {
Pointer<Void> result = perform(SEL('movieFragmentInterval'), decodeRetVal: false);
    return CMTime.fromPointer(result);

}
  
  set movieFragmentInterval(CMTime movieFragmentInterval) => perform(SEL('setMovieFragmentInterval:'), args: [movieFragmentInterval]);
  
  AVMetadataItem get metadata {
Pointer<Void> result = perform(SEL('metadata'), decodeRetVal: false);
    return AVMetadataItem.fromPointer(result);

}
  
  set metadata(AVMetadataItem metadata) => perform(SEL('setMetadata:'), args: [metadata]);
  @NativeAvailable(ios: '10.0') @NativeUnavailable(macos)
  AVVideoCodecType get availableVideoCodecTypes {
Pointer<Void> result = perform(SEL('availableVideoCodecTypes'), decodeRetVal: false);
    return AVVideoCodecType.fromPointer(result);

}
  @NativeAvailable(ios: '10.0') @NativeUnavailable(macos)
  set availableVideoCodecTypes(AVVideoCodecType availableVideoCodecTypes) => perform(SEL('setAvailableVideoCodecTypes:'), args: [availableVideoCodecTypes]);
  AVCaptureMovieFileOutput()
     : super.fromPointer(_init());

  static Pointer<Void> _init() {
    Pointer<Void> target = alloc(Class('AVCaptureMovieFileOutput'));
    SEL sel = SEL('init');
    return msgSend(target, sel, args: [], decodeRetVal: false);
  }

  
  static AVCaptureMovieFileOutput new() {
    Pointer<Void> result = Class('AVCaptureMovieFileOutput').perform(SEL('new'), decodeRetVal: false);
    return AVCaptureMovieFileOutput.fromPointer(result);
  }
  @NativeAvailable(ios: '12.0') @NativeUnavailable(macos) @NativeUnavailable(tvos, watchos)
  String supportedOutputSettingsKeysForConnection(AVCaptureConnection connection) {
    Pointer<Void> result = perform(SEL('supportedOutputSettingsKeysForConnection:'), args: [connection], decodeRetVal: false);
    return NSString.fromPointer(result).raw;
  }
  @NativeAvailable(ios: '10.0')
  NSObject outputSettingsForConnection(AVCaptureConnection connection) {
    Pointer<Void> result = perform(SEL('outputSettingsForConnection:'), args: [connection], decodeRetVal: false);
    return NSObject.fromPointer(result);
  }
  @NativeAvailable(ios: '10.0')
  void setOutputSettingsForConnection(AVCaptureConnection connection, {NSObject outputSettings}) {
     perform(SEL('setOutputSettings:forConnection:'), args: [outputSettings,connection]);
  }
  @NativeAvailable(ios: '9.0') @NativeUnavailable(macos)
  bool recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection(AVCaptureConnection connection) {
    return perform(SEL('recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection:'), args: [connection]);
  }
  @NativeAvailable(ios: '9.0') @NativeUnavailable(macos)
  void setRecordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection(bool doRecordChanges, AVCaptureConnection connection) {
     perform(SEL('setRecordsVideoOrientationAndMirroringChanges:asMetadataTrackForConnection:'), args: [doRecordChanges,connection]);
  }

}

@NativeAvailable(macos: '10.7') @NativeUnavailable(ios, watchos, tvos)
@native
class AVCaptureAudioFileOutput extends AVCaptureFileOutput {
  AVCaptureAudioFileOutput([Class isa]) : super(isa ?? Class('AVCaptureAudioFileOutput'));
  AVCaptureAudioFileOutput.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);
  
  AVMetadataItem get metadata {
Pointer<Void> result = perform(SEL('metadata'), decodeRetVal: false);
    return AVMetadataItem.fromPointer(result);

}
  
  set metadata(AVMetadataItem metadata) => perform(SEL('setMetadata:'), args: [metadata]);
  
  id get audioSettings {
Pointer<Void> result = perform(SEL('audioSettings'), decodeRetVal: false);
    return id.fromPointer(result);

}
  
  set audioSettings(id audioSettings) => perform(SEL('setAudioSettings:'), args: [audioSettings]);
  AVCaptureAudioFileOutput()
     : super.fromPointer(_init());

  static Pointer<Void> _init() {
    Pointer<Void> target = alloc(Class('AVCaptureAudioFileOutput'));
    SEL sel = SEL('init');
    return msgSend(target, sel, args: [], decodeRetVal: false);
  }

  
  static AVCaptureAudioFileOutput new() {
    Pointer<Void> result = Class('AVCaptureAudioFileOutput').perform(SEL('new'), decodeRetVal: false);
    return AVCaptureAudioFileOutput.fromPointer(result);
  }
  
  static AVFileType availableOutputFileTypes() {
    Pointer<Void> result = Class('AVCaptureAudioFileOutput').perform(SEL('availableOutputFileTypes'), decodeRetVal: false);
    return AVFileType.fromPointer(result);
  }
  
  void startRecordingToOutputFileURLOutputFileTypeRecordingDelegate(NSURL outputFileURL, AVFileType fileType, AVCaptureFileOutputRecordingDelegate delegate) {
     perform(SEL('startRecordingToOutputFileURL:outputFileType:recordingDelegate:'), args: [outputFileURL,fileType,delegate]);
  }

}
// You can uncomment this line when this package is ready.
// import 'package:avfcapture/avcapturefileoutput.dart';