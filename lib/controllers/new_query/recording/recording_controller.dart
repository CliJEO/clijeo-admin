import 'dart:async';
import 'dart:developer';

import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/controllers/new_query/recording/recording_state.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class RecordingController extends ChangeNotifier {
  RecordingState state = const RecordingState.notRecording();
  final Record _audioRecorder = Record();
  Timer? _timer;
  bool _disposed = false;

  @override
  void dispose() {
    _timer?.cancel();
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  void _startTimer() {
    // cancel is a timer is running previously
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      state = state.maybeMap(
          recording: (value) => value.copyWith(duration: value.duration + 1),
          orElse: () => state);
      notifyListeners();
    });
  }

  Future<void> startRecording(NewQueryFormController formController) async {
    await state.maybeWhen(
        notRecording: () async {
          try {
            if (await _audioRecorder.hasPermission()) {
              await _audioRecorder.start();
              state = const RecordingState.recording(duration: 0);
              notifyListeners();
              _startTimer();
            } else {
              log("[RecordingController] (startRecording) Error: No Permission");
              formController.updateStableStateVoiceAttachmentError(
                  ErrorController.recordingPermission);
            }
          } catch (e) {
            log("[RecordingController] (startRecording) Error:${e.toString()}");
            formController.updateStableStateVoiceAttachmentError(
                ErrorController.recordingError);
          }
        },
        orElse: () {});
  }

  Future<void> stopRecording(NewQueryFormController controller) async {
    await state.maybeWhen(
        recording: (_) async {
          // stop the timer callback
          _timer?.cancel();

          final path = await _audioRecorder.stop();
          if (path != null) {
            controller.updateStableStateVoiceAttachmentPath(path);
            state = const RecordingState.recordingCompleted();
          } else {
            log("[RecordingController] (stopRecording) Error: recording path is NULL");
            state = const RecordingState.notRecording();
          }
          notifyListeners();
        },
        orElse: () {});
  }
}
