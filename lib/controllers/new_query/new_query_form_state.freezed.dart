// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_query_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewQueryFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)
        stable,
    required TResult Function(int percentCompleted) loading,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult? Function(int percentCompleted)? loading,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult Function(int percentCompleted)? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewQueryFormStateCopyWith<$Res> {
  factory $NewQueryFormStateCopyWith(
          NewQueryFormState value, $Res Function(NewQueryFormState) then) =
      _$NewQueryFormStateCopyWithImpl<$Res, NewQueryFormState>;
}

/// @nodoc
class _$NewQueryFormStateCopyWithImpl<$Res, $Val extends NewQueryFormState>
    implements $NewQueryFormStateCopyWith<$Res> {
  _$NewQueryFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewQueryFormStableCopyWith<$Res> {
  factory _$$_NewQueryFormStableCopyWith(_$_NewQueryFormStable value,
          $Res Function(_$_NewQueryFormStable) then) =
      __$$_NewQueryFormStableCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? subject,
      String? body,
      String? voiceAttachmentPath,
      List<Attachment>? otherAttachments,
      String? voiceAttachmentError,
      String? otherAttachmentError,
      String? registerQueryError});
}

/// @nodoc
class __$$_NewQueryFormStableCopyWithImpl<$Res>
    extends _$NewQueryFormStateCopyWithImpl<$Res, _$_NewQueryFormStable>
    implements _$$_NewQueryFormStableCopyWith<$Res> {
  __$$_NewQueryFormStableCopyWithImpl(
      _$_NewQueryFormStable _value, $Res Function(_$_NewQueryFormStable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? body = freezed,
    Object? voiceAttachmentPath = freezed,
    Object? otherAttachments = freezed,
    Object? voiceAttachmentError = freezed,
    Object? otherAttachmentError = freezed,
    Object? registerQueryError = freezed,
  }) {
    return _then(_$_NewQueryFormStable(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceAttachmentPath: freezed == voiceAttachmentPath
          ? _value.voiceAttachmentPath
          : voiceAttachmentPath // ignore: cast_nullable_to_non_nullable
              as String?,
      otherAttachments: freezed == otherAttachments
          ? _value._otherAttachments
          : otherAttachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      voiceAttachmentError: freezed == voiceAttachmentError
          ? _value.voiceAttachmentError
          : voiceAttachmentError // ignore: cast_nullable_to_non_nullable
              as String?,
      otherAttachmentError: freezed == otherAttachmentError
          ? _value.otherAttachmentError
          : otherAttachmentError // ignore: cast_nullable_to_non_nullable
              as String?,
      registerQueryError: freezed == registerQueryError
          ? _value.registerQueryError
          : registerQueryError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewQueryFormStable implements _NewQueryFormStable {
  const _$_NewQueryFormStable(
      {this.subject,
      this.body,
      this.voiceAttachmentPath,
      final List<Attachment>? otherAttachments,
      this.voiceAttachmentError,
      this.otherAttachmentError,
      this.registerQueryError})
      : _otherAttachments = otherAttachments;

  @override
  final String? subject;
  @override
  final String? body;
  @override
  final String? voiceAttachmentPath;
  final List<Attachment>? _otherAttachments;
  @override
  List<Attachment>? get otherAttachments {
    final value = _otherAttachments;
    if (value == null) return null;
    if (_otherAttachments is EqualUnmodifiableListView)
      return _otherAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? voiceAttachmentError;
  @override
  final String? otherAttachmentError;
  @override
  final String? registerQueryError;

  @override
  String toString() {
    return 'NewQueryFormState.stable(subject: $subject, body: $body, voiceAttachmentPath: $voiceAttachmentPath, otherAttachments: $otherAttachments, voiceAttachmentError: $voiceAttachmentError, otherAttachmentError: $otherAttachmentError, registerQueryError: $registerQueryError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewQueryFormStable &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.voiceAttachmentPath, voiceAttachmentPath) ||
                other.voiceAttachmentPath == voiceAttachmentPath) &&
            const DeepCollectionEquality()
                .equals(other._otherAttachments, _otherAttachments) &&
            (identical(other.voiceAttachmentError, voiceAttachmentError) ||
                other.voiceAttachmentError == voiceAttachmentError) &&
            (identical(other.otherAttachmentError, otherAttachmentError) ||
                other.otherAttachmentError == otherAttachmentError) &&
            (identical(other.registerQueryError, registerQueryError) ||
                other.registerQueryError == registerQueryError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subject,
      body,
      voiceAttachmentPath,
      const DeepCollectionEquality().hash(_otherAttachments),
      voiceAttachmentError,
      otherAttachmentError,
      registerQueryError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewQueryFormStableCopyWith<_$_NewQueryFormStable> get copyWith =>
      __$$_NewQueryFormStableCopyWithImpl<_$_NewQueryFormStable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)
        stable,
    required TResult Function(int percentCompleted) loading,
    required TResult Function() completed,
  }) {
    return stable(subject, body, voiceAttachmentPath, otherAttachments,
        voiceAttachmentError, otherAttachmentError, registerQueryError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult? Function(int percentCompleted)? loading,
    TResult? Function()? completed,
  }) {
    return stable?.call(subject, body, voiceAttachmentPath, otherAttachments,
        voiceAttachmentError, otherAttachmentError, registerQueryError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult Function(int percentCompleted)? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(subject, body, voiceAttachmentPath, otherAttachments,
          voiceAttachmentError, otherAttachmentError, registerQueryError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormCompleted value) completed,
  }) {
    return stable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormCompleted value)? completed,
  }) {
    return stable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (stable != null) {
      return stable(this);
    }
    return orElse();
  }
}

abstract class _NewQueryFormStable implements NewQueryFormState {
  const factory _NewQueryFormStable(
      {final String? subject,
      final String? body,
      final String? voiceAttachmentPath,
      final List<Attachment>? otherAttachments,
      final String? voiceAttachmentError,
      final String? otherAttachmentError,
      final String? registerQueryError}) = _$_NewQueryFormStable;

  String? get subject;
  String? get body;
  String? get voiceAttachmentPath;
  List<Attachment>? get otherAttachments;
  String? get voiceAttachmentError;
  String? get otherAttachmentError;
  String? get registerQueryError;
  @JsonKey(ignore: true)
  _$$_NewQueryFormStableCopyWith<_$_NewQueryFormStable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewQueryFormLoadingCopyWith<$Res> {
  factory _$$_NewQueryFormLoadingCopyWith(_$_NewQueryFormLoading value,
          $Res Function(_$_NewQueryFormLoading) then) =
      __$$_NewQueryFormLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({int percentCompleted});
}

/// @nodoc
class __$$_NewQueryFormLoadingCopyWithImpl<$Res>
    extends _$NewQueryFormStateCopyWithImpl<$Res, _$_NewQueryFormLoading>
    implements _$$_NewQueryFormLoadingCopyWith<$Res> {
  __$$_NewQueryFormLoadingCopyWithImpl(_$_NewQueryFormLoading _value,
      $Res Function(_$_NewQueryFormLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentCompleted = null,
  }) {
    return _then(_$_NewQueryFormLoading(
      percentCompleted: null == percentCompleted
          ? _value.percentCompleted
          : percentCompleted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NewQueryFormLoading implements _NewQueryFormLoading {
  const _$_NewQueryFormLoading({required this.percentCompleted});

  @override
  final int percentCompleted;

  @override
  String toString() {
    return 'NewQueryFormState.loading(percentCompleted: $percentCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewQueryFormLoading &&
            (identical(other.percentCompleted, percentCompleted) ||
                other.percentCompleted == percentCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percentCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewQueryFormLoadingCopyWith<_$_NewQueryFormLoading> get copyWith =>
      __$$_NewQueryFormLoadingCopyWithImpl<_$_NewQueryFormLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)
        stable,
    required TResult Function(int percentCompleted) loading,
    required TResult Function() completed,
  }) {
    return loading(percentCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult? Function(int percentCompleted)? loading,
    TResult? Function()? completed,
  }) {
    return loading?.call(percentCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult Function(int percentCompleted)? loading,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(percentCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormCompleted value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormCompleted value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewQueryFormLoading implements NewQueryFormState {
  const factory _NewQueryFormLoading({required final int percentCompleted}) =
      _$_NewQueryFormLoading;

  int get percentCompleted;
  @JsonKey(ignore: true)
  _$$_NewQueryFormLoadingCopyWith<_$_NewQueryFormLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewQueryFormCompletedCopyWith<$Res> {
  factory _$$_NewQueryFormCompletedCopyWith(_$_NewQueryFormCompleted value,
          $Res Function(_$_NewQueryFormCompleted) then) =
      __$$_NewQueryFormCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewQueryFormCompletedCopyWithImpl<$Res>
    extends _$NewQueryFormStateCopyWithImpl<$Res, _$_NewQueryFormCompleted>
    implements _$$_NewQueryFormCompletedCopyWith<$Res> {
  __$$_NewQueryFormCompletedCopyWithImpl(_$_NewQueryFormCompleted _value,
      $Res Function(_$_NewQueryFormCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewQueryFormCompleted implements _NewQueryFormCompleted {
  const _$_NewQueryFormCompleted();

  @override
  String toString() {
    return 'NewQueryFormState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewQueryFormCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)
        stable,
    required TResult Function(int percentCompleted) loading,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult? Function(int percentCompleted)? loading,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? subject,
            String? body,
            String? voiceAttachmentPath,
            List<Attachment>? otherAttachments,
            String? voiceAttachmentError,
            String? otherAttachmentError,
            String? registerQueryError)?
        stable,
    TResult Function(int percentCompleted)? loading,
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
    required TResult Function(_NewQueryFormStable value) stable,
    required TResult Function(_NewQueryFormLoading value) loading,
    required TResult Function(_NewQueryFormCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewQueryFormStable value)? stable,
    TResult? Function(_NewQueryFormLoading value)? loading,
    TResult? Function(_NewQueryFormCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewQueryFormStable value)? stable,
    TResult Function(_NewQueryFormLoading value)? loading,
    TResult Function(_NewQueryFormCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _NewQueryFormCompleted implements NewQueryFormState {
  const factory _NewQueryFormCompleted() = _$_NewQueryFormCompleted;
}
