// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_playback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPlaybackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration currentPos, Duration duration) paused,
    required TResult Function(Duration currentPos, Duration duration) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration currentPos, Duration duration)? paused,
    TResult? Function(Duration currentPos, Duration duration)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration currentPos, Duration duration)? paused,
    TResult Function(Duration currentPos, Duration duration)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackStateInitial value) initial,
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackStateInitial value)? initial,
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackStateInitial value)? initial,
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlaybackStateCopyWith<$Res> {
  factory $AudioPlaybackStateCopyWith(
          AudioPlaybackState value, $Res Function(AudioPlaybackState) then) =
      _$AudioPlaybackStateCopyWithImpl<$Res, AudioPlaybackState>;
}

/// @nodoc
class _$AudioPlaybackStateCopyWithImpl<$Res, $Val extends AudioPlaybackState>
    implements $AudioPlaybackStateCopyWith<$Res> {
  _$AudioPlaybackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AudioPlaybackStateInitialCopyWith<$Res> {
  factory _$$_AudioPlaybackStateInitialCopyWith(
          _$_AudioPlaybackStateInitial value,
          $Res Function(_$_AudioPlaybackStateInitial) then) =
      __$$_AudioPlaybackStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AudioPlaybackStateInitialCopyWithImpl<$Res>
    extends _$AudioPlaybackStateCopyWithImpl<$Res, _$_AudioPlaybackStateInitial>
    implements _$$_AudioPlaybackStateInitialCopyWith<$Res> {
  __$$_AudioPlaybackStateInitialCopyWithImpl(
      _$_AudioPlaybackStateInitial _value,
      $Res Function(_$_AudioPlaybackStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AudioPlaybackStateInitial implements _AudioPlaybackStateInitial {
  const _$_AudioPlaybackStateInitial();

  @override
  String toString() {
    return 'AudioPlaybackState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlaybackStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration currentPos, Duration duration) paused,
    required TResult Function(Duration currentPos, Duration duration) playing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration currentPos, Duration duration)? paused,
    TResult? Function(Duration currentPos, Duration duration)? playing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration currentPos, Duration duration)? paused,
    TResult Function(Duration currentPos, Duration duration)? playing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackStateInitial value) initial,
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackStateInitial value)? initial,
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackStateInitial value)? initial,
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AudioPlaybackStateInitial implements AudioPlaybackState {
  const factory _AudioPlaybackStateInitial() = _$_AudioPlaybackStateInitial;
}

/// @nodoc
abstract class _$$_AudioPlaybackPausedCopyWith<$Res> {
  factory _$$_AudioPlaybackPausedCopyWith(_$_AudioPlaybackPaused value,
          $Res Function(_$_AudioPlaybackPaused) then) =
      __$$_AudioPlaybackPausedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration currentPos, Duration duration});
}

/// @nodoc
class __$$_AudioPlaybackPausedCopyWithImpl<$Res>
    extends _$AudioPlaybackStateCopyWithImpl<$Res, _$_AudioPlaybackPaused>
    implements _$$_AudioPlaybackPausedCopyWith<$Res> {
  __$$_AudioPlaybackPausedCopyWithImpl(_$_AudioPlaybackPaused _value,
      $Res Function(_$_AudioPlaybackPaused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPos = null,
    Object? duration = null,
  }) {
    return _then(_$_AudioPlaybackPaused(
      currentPos: null == currentPos
          ? _value.currentPos
          : currentPos // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AudioPlaybackPaused implements _AudioPlaybackPaused {
  const _$_AudioPlaybackPaused(
      {required this.currentPos, required this.duration});

  @override
  final Duration currentPos;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'AudioPlaybackState.paused(currentPos: $currentPos, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlaybackPaused &&
            (identical(other.currentPos, currentPos) ||
                other.currentPos == currentPos) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPos, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioPlaybackPausedCopyWith<_$_AudioPlaybackPaused> get copyWith =>
      __$$_AudioPlaybackPausedCopyWithImpl<_$_AudioPlaybackPaused>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration currentPos, Duration duration) paused,
    required TResult Function(Duration currentPos, Duration duration) playing,
  }) {
    return paused(currentPos, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration currentPos, Duration duration)? paused,
    TResult? Function(Duration currentPos, Duration duration)? playing,
  }) {
    return paused?.call(currentPos, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration currentPos, Duration duration)? paused,
    TResult Function(Duration currentPos, Duration duration)? playing,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(currentPos, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackStateInitial value) initial,
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackStateInitial value)? initial,
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackStateInitial value)? initial,
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _AudioPlaybackPaused implements AudioPlaybackState {
  const factory _AudioPlaybackPaused(
      {required final Duration currentPos,
      required final Duration duration}) = _$_AudioPlaybackPaused;

  Duration get currentPos;
  Duration get duration;
  @JsonKey(ignore: true)
  _$$_AudioPlaybackPausedCopyWith<_$_AudioPlaybackPaused> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AudioPlaybackPlayingCopyWith<$Res> {
  factory _$$_AudioPlaybackPlayingCopyWith(_$_AudioPlaybackPlaying value,
          $Res Function(_$_AudioPlaybackPlaying) then) =
      __$$_AudioPlaybackPlayingCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration currentPos, Duration duration});
}

/// @nodoc
class __$$_AudioPlaybackPlayingCopyWithImpl<$Res>
    extends _$AudioPlaybackStateCopyWithImpl<$Res, _$_AudioPlaybackPlaying>
    implements _$$_AudioPlaybackPlayingCopyWith<$Res> {
  __$$_AudioPlaybackPlayingCopyWithImpl(_$_AudioPlaybackPlaying _value,
      $Res Function(_$_AudioPlaybackPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPos = null,
    Object? duration = null,
  }) {
    return _then(_$_AudioPlaybackPlaying(
      currentPos: null == currentPos
          ? _value.currentPos
          : currentPos // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AudioPlaybackPlaying implements _AudioPlaybackPlaying {
  const _$_AudioPlaybackPlaying(
      {required this.currentPos, required this.duration});

  @override
  final Duration currentPos;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'AudioPlaybackState.playing(currentPos: $currentPos, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlaybackPlaying &&
            (identical(other.currentPos, currentPos) ||
                other.currentPos == currentPos) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPos, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioPlaybackPlayingCopyWith<_$_AudioPlaybackPlaying> get copyWith =>
      __$$_AudioPlaybackPlayingCopyWithImpl<_$_AudioPlaybackPlaying>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration currentPos, Duration duration) paused,
    required TResult Function(Duration currentPos, Duration duration) playing,
  }) {
    return playing(currentPos, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration currentPos, Duration duration)? paused,
    TResult? Function(Duration currentPos, Duration duration)? playing,
  }) {
    return playing?.call(currentPos, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration currentPos, Duration duration)? paused,
    TResult Function(Duration currentPos, Duration duration)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(currentPos, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlaybackStateInitial value) initial,
    required TResult Function(_AudioPlaybackPaused value) paused,
    required TResult Function(_AudioPlaybackPlaying value) playing,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlaybackStateInitial value)? initial,
    TResult? Function(_AudioPlaybackPaused value)? paused,
    TResult? Function(_AudioPlaybackPlaying value)? playing,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlaybackStateInitial value)? initial,
    TResult Function(_AudioPlaybackPaused value)? paused,
    TResult Function(_AudioPlaybackPlaying value)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _AudioPlaybackPlaying implements AudioPlaybackState {
  const factory _AudioPlaybackPlaying(
      {required final Duration currentPos,
      required final Duration duration}) = _$_AudioPlaybackPlaying;

  Duration get currentPos;
  Duration get duration;
  @JsonKey(ignore: true)
  _$$_AudioPlaybackPlayingCopyWith<_$_AudioPlaybackPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}
