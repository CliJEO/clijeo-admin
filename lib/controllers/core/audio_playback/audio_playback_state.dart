import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_playback_state.freezed.dart';

@freezed
abstract class AudioPlaybackState with _$AudioPlaybackState {
  const factory AudioPlaybackState.initial() = _AudioPlaybackStateInitial;
  const factory AudioPlaybackState.paused(
      {required Duration currentPos,
      required Duration duration}) = _AudioPlaybackPaused;
  const factory AudioPlaybackState.playing(
      {required Duration currentPos,
      required Duration duration}) = _AudioPlaybackPlaying;
}
