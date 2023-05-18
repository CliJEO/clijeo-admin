import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recording_state.freezed.dart';

@freezed
abstract class RecordingState with _$RecordingState {
  const factory RecordingState.notRecording() = _RecordingStateNotRecording;
  const factory RecordingState.recording({required int duration}) =
      _RecordingStateRecording;
  const factory RecordingState.recordingCompleted() =
      _RecordingStateRecordingCompleted;
}
