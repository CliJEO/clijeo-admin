// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread_respond_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThreadRespondFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, String? replyError) stable,
    required TResult Function() loading,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, String? replyError)? stable,
    TResult? Function()? loading,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, String? replyError)? stable,
    TResult Function()? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadRespondFormStateCopyWith<$Res> {
  factory $ThreadRespondFormStateCopyWith(ThreadRespondFormState value,
          $Res Function(ThreadRespondFormState) then) =
      _$ThreadRespondFormStateCopyWithImpl<$Res, ThreadRespondFormState>;
}

/// @nodoc
class _$ThreadRespondFormStateCopyWithImpl<$Res,
        $Val extends ThreadRespondFormState>
    implements $ThreadRespondFormStateCopyWith<$Res> {
  _$ThreadRespondFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ThreadRespondFormStableCopyWith<$Res> {
  factory _$$_ThreadRespondFormStableCopyWith(_$_ThreadRespondFormStable value,
          $Res Function(_$_ThreadRespondFormStable) then) =
      __$$_ThreadRespondFormStableCopyWithImpl<$Res>;
  @useResult
  $Res call({String? body, String? replyError});
}

/// @nodoc
class __$$_ThreadRespondFormStableCopyWithImpl<$Res>
    extends _$ThreadRespondFormStateCopyWithImpl<$Res,
        _$_ThreadRespondFormStable>
    implements _$$_ThreadRespondFormStableCopyWith<$Res> {
  __$$_ThreadRespondFormStableCopyWithImpl(_$_ThreadRespondFormStable _value,
      $Res Function(_$_ThreadRespondFormStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? replyError = freezed,
  }) {
    return _then(_$_ThreadRespondFormStable(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      replyError: freezed == replyError
          ? _value.replyError
          : replyError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ThreadRespondFormStable implements _ThreadRespondFormStable {
  const _$_ThreadRespondFormStable({this.body, this.replyError});

  @override
  final String? body;
  @override
  final String? replyError;

  @override
  String toString() {
    return 'ThreadRespondFormState.stable(body: $body, replyError: $replyError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreadRespondFormStable &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.replyError, replyError) ||
                other.replyError == replyError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body, replyError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreadRespondFormStableCopyWith<_$_ThreadRespondFormStable>
      get copyWith =>
          __$$_ThreadRespondFormStableCopyWithImpl<_$_ThreadRespondFormStable>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, String? replyError) stable,
    required TResult Function() loading,
    required TResult Function() completed,
  }) {
    return stable(body, replyError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, String? replyError)? stable,
    TResult? Function()? loading,
    TResult? Function()? completed,
  }) {
    return stable?.call(body, replyError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, String? replyError)? stable,
    TResult Function()? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(body, replyError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormCompleted value) completed,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormCompleted value)? completed,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _ThreadRespondFormStable implements ThreadRespondFormState {
  const factory _ThreadRespondFormStable(
      {final String? body,
      final String? replyError}) = _$_ThreadRespondFormStable;

  String? get body;
  String? get replyError;
  @JsonKey(ignore: true)
  _$$_ThreadRespondFormStableCopyWith<_$_ThreadRespondFormStable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ThreadRespondFormLoadingCopyWith<$Res> {
  factory _$$_ThreadRespondFormLoadingCopyWith(
          _$_ThreadRespondFormLoading value,
          $Res Function(_$_ThreadRespondFormLoading) then) =
      __$$_ThreadRespondFormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ThreadRespondFormLoadingCopyWithImpl<$Res>
    extends _$ThreadRespondFormStateCopyWithImpl<$Res,
        _$_ThreadRespondFormLoading>
    implements _$$_ThreadRespondFormLoadingCopyWith<$Res> {
  __$$_ThreadRespondFormLoadingCopyWithImpl(_$_ThreadRespondFormLoading _value,
      $Res Function(_$_ThreadRespondFormLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ThreadRespondFormLoading implements _ThreadRespondFormLoading {
  const _$_ThreadRespondFormLoading();

  @override
  String toString() {
    return 'ThreadRespondFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreadRespondFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, String? replyError) stable,
    required TResult Function() loading,
    required TResult Function() completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, String? replyError)? stable,
    TResult? Function()? loading,
    TResult? Function()? completed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, String? replyError)? stable,
    TResult Function()? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormCompleted value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormCompleted value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ThreadRespondFormLoading implements ThreadRespondFormState {
  const factory _ThreadRespondFormLoading() = _$_ThreadRespondFormLoading;
}

/// @nodoc
abstract class _$$_ThreadRespondFormCompletedCopyWith<$Res> {
  factory _$$_ThreadRespondFormCompletedCopyWith(
          _$_ThreadRespondFormCompleted value,
          $Res Function(_$_ThreadRespondFormCompleted) then) =
      __$$_ThreadRespondFormCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ThreadRespondFormCompletedCopyWithImpl<$Res>
    extends _$ThreadRespondFormStateCopyWithImpl<$Res,
        _$_ThreadRespondFormCompleted>
    implements _$$_ThreadRespondFormCompletedCopyWith<$Res> {
  __$$_ThreadRespondFormCompletedCopyWithImpl(
      _$_ThreadRespondFormCompleted _value,
      $Res Function(_$_ThreadRespondFormCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ThreadRespondFormCompleted implements _ThreadRespondFormCompleted {
  const _$_ThreadRespondFormCompleted();

  @override
  String toString() {
    return 'ThreadRespondFormState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreadRespondFormCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, String? replyError) stable,
    required TResult Function() loading,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, String? replyError)? stable,
    TResult? Function()? loading,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, String? replyError)? stable,
    TResult Function()? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThreadRespondFormStable value) stable,
    required TResult Function(_ThreadRespondFormLoading value) loading,
    required TResult Function(_ThreadRespondFormCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThreadRespondFormStable value)? stable,
    TResult? Function(_ThreadRespondFormLoading value)? loading,
    TResult? Function(_ThreadRespondFormCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThreadRespondFormStable value)? stable,
    TResult Function(_ThreadRespondFormLoading value)? loading,
    TResult Function(_ThreadRespondFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _ThreadRespondFormCompleted implements ThreadRespondFormState {
  const factory _ThreadRespondFormCompleted() = _$_ThreadRespondFormCompleted;
}
