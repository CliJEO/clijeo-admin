// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recording_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notRecording,
    required TResult Function(int duration) recording,
    required TResult Function() recordingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notRecording,
    TResult? Function(int duration)? recording,
    TResult? Function()? recordingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notRecording,
    TResult Function(int duration)? recording,
    TResult Function()? recordingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordingStateNotRecording value) notRecording,
    required TResult Function(_RecordingStateRecording value) recording,
    required TResult Function(_RecordingStateRecordingCompleted value)
        recordingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordingStateNotRecording value)? notRecording,
    TResult? Function(_RecordingStateRecording value)? recording,
    TResult? Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordingStateNotRecording value)? notRecording,
    TResult Function(_RecordingStateRecording value)? recording,
    TResult Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingStateCopyWith<$Res> {
  factory $RecordingStateCopyWith(
          RecordingState value, $Res Function(RecordingState) then) =
      _$RecordingStateCopyWithImpl<$Res, RecordingState>;
}

/// @nodoc
class _$RecordingStateCopyWithImpl<$Res, $Val extends RecordingState>
    implements $RecordingStateCopyWith<$Res> {
  _$RecordingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RecordingStateNotRecordingCopyWith<$Res> {
  factory _$$_RecordingStateNotRecordingCopyWith(
          _$_RecordingStateNotRecording value,
          $Res Function(_$_RecordingStateNotRecording) then) =
      __$$_RecordingStateNotRecordingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecordingStateNotRecordingCopyWithImpl<$Res>
    extends _$RecordingStateCopyWithImpl<$Res, _$_RecordingStateNotRecording>
    implements _$$_RecordingStateNotRecordingCopyWith<$Res> {
  __$$_RecordingStateNotRecordingCopyWithImpl(
      _$_RecordingStateNotRecording _value,
      $Res Function(_$_RecordingStateNotRecording) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecordingStateNotRecording implements _RecordingStateNotRecording {
  const _$_RecordingStateNotRecording();

  @override
  String toString() {
    return 'RecordingState.notRecording()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordingStateNotRecording);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notRecording,
    required TResult Function(int duration) recording,
    required TResult Function() recordingCompleted,
  }) {
    return notRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notRecording,
    TResult? Function(int duration)? recording,
    TResult? Function()? recordingCompleted,
  }) {
    return notRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notRecording,
    TResult Function(int duration)? recording,
    TResult Function()? recordingCompleted,
    required TResult orElse(),
  }) {
    if (notRecording != null) {
      return notRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordingStateNotRecording value) notRecording,
    required TResult Function(_RecordingStateRecording value) recording,
    required TResult Function(_RecordingStateRecordingCompleted value)
        recordingCompleted,
  }) {
    return notRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordingStateNotRecording value)? notRecording,
    TResult? Function(_RecordingStateRecording value)? recording,
    TResult? Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
  }) {
    return notRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordingStateNotRecording value)? notRecording,
    TResult Function(_RecordingStateRecording value)? recording,
    TResult Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
    required TResult orElse(),
  }) {
    if (notRecording != null) {
      return notRecording(this);
    }
    return orElse();
  }
}

abstract class _RecordingStateNotRecording implements RecordingState {
  const factory _RecordingStateNotRecording() = _$_RecordingStateNotRecording;
}

/// @nodoc
abstract class _$$_RecordingStateRecordingCopyWith<$Res> {
  factory _$$_RecordingStateRecordingCopyWith(_$_RecordingStateRecording value,
          $Res Function(_$_RecordingStateRecording) then) =
      __$$_RecordingStateRecordingCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$_RecordingStateRecordingCopyWithImpl<$Res>
    extends _$RecordingStateCopyWithImpl<$Res, _$_RecordingStateRecording>
    implements _$$_RecordingStateRecordingCopyWith<$Res> {
  __$$_RecordingStateRecordingCopyWithImpl(_$_RecordingStateRecording _value,
      $Res Function(_$_RecordingStateRecording) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_RecordingStateRecording(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RecordingStateRecording implements _RecordingStateRecording {
  const _$_RecordingStateRecording({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'RecordingState.recording(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordingStateRecording &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordingStateRecordingCopyWith<_$_RecordingStateRecording>
      get copyWith =>
          __$$_RecordingStateRecordingCopyWithImpl<_$_RecordingStateRecording>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notRecording,
    required TResult Function(int duration) recording,
    required TResult Function() recordingCompleted,
  }) {
    return recording(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notRecording,
    TResult? Function(int duration)? recording,
    TResult? Function()? recordingCompleted,
  }) {
    return recording?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notRecording,
    TResult Function(int duration)? recording,
    TResult Function()? recordingCompleted,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordingStateNotRecording value) notRecording,
    required TResult Function(_RecordingStateRecording value) recording,
    required TResult Function(_RecordingStateRecordingCompleted value)
        recordingCompleted,
  }) {
    return recording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordingStateNotRecording value)? notRecording,
    TResult? Function(_RecordingStateRecording value)? recording,
    TResult? Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
  }) {
    return recording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordingStateNotRecording value)? notRecording,
    TResult Function(_RecordingStateRecording value)? recording,
    TResult Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(this);
    }
    return orElse();
  }
}

abstract class _RecordingStateRecording implements RecordingState {
  const factory _RecordingStateRecording({required final int duration}) =
      _$_RecordingStateRecording;

  int get duration;
  @JsonKey(ignore: true)
  _$$_RecordingStateRecordingCopyWith<_$_RecordingStateRecording>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecordingStateRecordingCompletedCopyWith<$Res> {
  factory _$$_RecordingStateRecordingCompletedCopyWith(
          _$_RecordingStateRecordingCompleted value,
          $Res Function(_$_RecordingStateRecordingCompleted) then) =
      __$$_RecordingStateRecordingCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecordingStateRecordingCompletedCopyWithImpl<$Res>
    extends _$RecordingStateCopyWithImpl<$Res,
        _$_RecordingStateRecordingCompleted>
    implements _$$_RecordingStateRecordingCompletedCopyWith<$Res> {
  __$$_RecordingStateRecordingCompletedCopyWithImpl(
      _$_RecordingStateRecordingCompleted _value,
      $Res Function(_$_RecordingStateRecordingCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecordingStateRecordingCompleted
    implements _RecordingStateRecordingCompleted {
  const _$_RecordingStateRecordingCompleted();

  @override
  String toString() {
    return 'RecordingState.recordingCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordingStateRecordingCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notRecording,
    required TResult Function(int duration) recording,
    required TResult Function() recordingCompleted,
  }) {
    return recordingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notRecording,
    TResult? Function(int duration)? recording,
    TResult? Function()? recordingCompleted,
  }) {
    return recordingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notRecording,
    TResult Function(int duration)? recording,
    TResult Function()? recordingCompleted,
    required TResult orElse(),
  }) {
    if (recordingCompleted != null) {
      return recordingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordingStateNotRecording value) notRecording,
    required TResult Function(_RecordingStateRecording value) recording,
    required TResult Function(_RecordingStateRecordingCompleted value)
        recordingCompleted,
  }) {
    return recordingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordingStateNotRecording value)? notRecording,
    TResult? Function(_RecordingStateRecording value)? recording,
    TResult? Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
  }) {
    return recordingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordingStateNotRecording value)? notRecording,
    TResult Function(_RecordingStateRecording value)? recording,
    TResult Function(_RecordingStateRecordingCompleted value)?
        recordingCompleted,
    required TResult orElse(),
  }) {
    if (recordingCompleted != null) {
      return recordingCompleted(this);
    }
    return orElse();
  }
}

abstract class _RecordingStateRecordingCompleted implements RecordingState {
  const factory _RecordingStateRecordingCompleted() =
      _$_RecordingStateRecordingCompleted;
}
