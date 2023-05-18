import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:clijeo_public/controllers/new_query/audio_playback/audio_playback_state.dart';
import 'package:flutter/material.dart';

class AudioPlaybackController extends ChangeNotifier {
  AudioPlaybackState state = const AudioPlaybackState.initial();
  final String _audioPath;

  AudioPlaybackController({required String path}) : _audioPath = path;

  AudioPlayer? _audioPlayer;
  bool _disposed = false;

  @override
  void dispose() {
    _audioPlayer?.dispose();
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  Future<void> initAudioPlayer() async {
    _audioPlayer = AudioPlayer();
    await _audioPlayer!.setSourceDeviceFile(_audioPath);
    await _audioPlayer!.setReleaseMode(ReleaseMode.stop);
    Duration? audioDuration = await _audioPlayer!.getDuration();
    if (audioDuration != null) {
      state = AudioPlaybackState.paused(
          currentPos: const Duration(seconds: 0), duration: audioDuration);
      notifyListeners();
      _incrementCurrentPos();
      _onPlayerCompleteAction();
    }
  }

  void _onPlayerCompleteAction() {
    if (_audioPlayer != null) {
      _audioPlayer!.onPlayerComplete.listen((_) {
        state = state.maybeMap(
            playing: (value) => AudioPlaybackState.paused(
                currentPos: const Duration(seconds: 0),
                duration: value.duration),
            orElse: () => state);
      });
    }
  }

  void _incrementCurrentPos() {
    if (_audioPlayer != null) {
      _audioPlayer!.onPositionChanged.listen((event) {
        state = state.maybeMap(
            playing: (value) => value.copyWith(currentPos: event),
            paused: (value) => value.copyWith(currentPos: event),
            orElse: () => state);
        notifyListeners();
      });
    }
  }

  Future<void> playAudio() async {
    if (_audioPlayer != null) {
      state = state.maybeMap(
          paused: (value) => AudioPlaybackState.playing(
              currentPos: value.currentPos, duration: value.duration),
          orElse: () => state);
      notifyListeners();
      await _audioPlayer!.resume();
    }
  }

  Future<void> pauseAudio() async {
    if (_audioPlayer != null) {
      await _audioPlayer!.pause();
      state = state.maybeMap(
          playing: (value) => AudioPlaybackState.paused(
              currentPos: value.currentPos, duration: value.duration),
          orElse: () => state);
      notifyListeners();
    }
  }

  Future<void> seekAudioPosition(double value) async {
    int seekval = value.round();
    if (_audioPlayer != null) {
      await _audioPlayer!.seek(Duration(milliseconds: seekval));
    }
  }
}
