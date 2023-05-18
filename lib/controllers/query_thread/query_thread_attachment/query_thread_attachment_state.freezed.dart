// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_thread_attachment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryThreadAttachmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attachmentPath) downloaded,
    required TResult Function(int percentCompleted) downloading,
    required TResult Function(String downloadPath, String? downloadingError)
        notDownloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attachmentPath)? downloaded,
    TResult? Function(int percentCompleted)? downloading,
    TResult? Function(String downloadPath, String? downloadingError)?
        notDownloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attachmentPath)? downloaded,
    TResult Function(int percentCompleted)? downloading,
    TResult Function(String downloadPath, String? downloadingError)?
        notDownloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryThreadAttachmentDownloaded value)
        downloaded,
    required TResult Function(_QueryThreadAttachmentDownloading value)
        downloading,
    required TResult Function(_QueryThreadAttachmentNotDownloaded value)
        notDownloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult? Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult? Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryThreadAttachmentStateCopyWith<$Res> {
  factory $QueryThreadAttachmentStateCopyWith(QueryThreadAttachmentState value,
          $Res Function(QueryThreadAttachmentState) then) =
      _$QueryThreadAttachmentStateCopyWithImpl<$Res,
          QueryThreadAttachmentState>;
}

/// @nodoc
class _$QueryThreadAttachmentStateCopyWithImpl<$Res,
        $Val extends QueryThreadAttachmentState>
    implements $QueryThreadAttachmentStateCopyWith<$Res> {
  _$QueryThreadAttachmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_QueryThreadAttachmentDownloadedCopyWith<$Res> {
  factory _$$_QueryThreadAttachmentDownloadedCopyWith(
          _$_QueryThreadAttachmentDownloaded value,
          $Res Function(_$_QueryThreadAttachmentDownloaded) then) =
      __$$_QueryThreadAttachmentDownloadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String attachmentPath});
}

/// @nodoc
class __$$_QueryThreadAttachmentDownloadedCopyWithImpl<$Res>
    extends _$QueryThreadAttachmentStateCopyWithImpl<$Res,
        _$_QueryThreadAttachmentDownloaded>
    implements _$$_QueryThreadAttachmentDownloadedCopyWith<$Res> {
  __$$_QueryThreadAttachmentDownloadedCopyWithImpl(
      _$_QueryThreadAttachmentDownloaded _value,
      $Res Function(_$_QueryThreadAttachmentDownloaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentPath = null,
  }) {
    return _then(_$_QueryThreadAttachmentDownloaded(
      attachmentPath: null == attachmentPath
          ? _value.attachmentPath
          : attachmentPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QueryThreadAttachmentDownloaded
    implements _QueryThreadAttachmentDownloaded {
  const _$_QueryThreadAttachmentDownloaded({required this.attachmentPath});

  @override
  final String attachmentPath;

  @override
  String toString() {
    return 'QueryThreadAttachmentState.downloaded(attachmentPath: $attachmentPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryThreadAttachmentDownloaded &&
            (identical(other.attachmentPath, attachmentPath) ||
                other.attachmentPath == attachmentPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attachmentPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryThreadAttachmentDownloadedCopyWith<
          _$_QueryThreadAttachmentDownloaded>
      get copyWith => __$$_QueryThreadAttachmentDownloadedCopyWithImpl<
          _$_QueryThreadAttachmentDownloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attachmentPath) downloaded,
    required TResult Function(int percentCompleted) downloading,
    required TResult Function(String downloadPath, String? downloadingError)
        notDownloaded,
  }) {
    return downloaded(attachmentPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attachmentPath)? downloaded,
    TResult? Function(int percentCompleted)? downloading,
    TResult? Function(String downloadPath, String? downloadingError)?
        notDownloaded,
  }) {
    return downloaded?.call(attachmentPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attachmentPath)? downloaded,
    TResult Function(int percentCompleted)? downloading,
    TResult Function(String downloadPath, String? downloadingError)?
        notDownloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(attachmentPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryThreadAttachmentDownloaded value)
        downloaded,
    required TResult Function(_QueryThreadAttachmentDownloading value)
        downloading,
    required TResult Function(_QueryThreadAttachmentNotDownloaded value)
        notDownloaded,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult? Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult? Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
  }) {
    return downloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class _QueryThreadAttachmentDownloaded
    implements QueryThreadAttachmentState {
  const factory _QueryThreadAttachmentDownloaded(
          {required final String attachmentPath}) =
      _$_QueryThreadAttachmentDownloaded;

  String get attachmentPath;
  @JsonKey(ignore: true)
  _$$_QueryThreadAttachmentDownloadedCopyWith<
          _$_QueryThreadAttachmentDownloaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryThreadAttachmentDownloadingCopyWith<$Res> {
  factory _$$_QueryThreadAttachmentDownloadingCopyWith(
          _$_QueryThreadAttachmentDownloading value,
          $Res Function(_$_QueryThreadAttachmentDownloading) then) =
      __$$_QueryThreadAttachmentDownloadingCopyWithImpl<$Res>;
  @useResult
  $Res call({int percentCompleted});
}

/// @nodoc
class __$$_QueryThreadAttachmentDownloadingCopyWithImpl<$Res>
    extends _$QueryThreadAttachmentStateCopyWithImpl<$Res,
        _$_QueryThreadAttachmentDownloading>
    implements _$$_QueryThreadAttachmentDownloadingCopyWith<$Res> {
  __$$_QueryThreadAttachmentDownloadingCopyWithImpl(
      _$_QueryThreadAttachmentDownloading _value,
      $Res Function(_$_QueryThreadAttachmentDownloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentCompleted = null,
  }) {
    return _then(_$_QueryThreadAttachmentDownloading(
      percentCompleted: null == percentCompleted
          ? _value.percentCompleted
          : percentCompleted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QueryThreadAttachmentDownloading
    implements _QueryThreadAttachmentDownloading {
  const _$_QueryThreadAttachmentDownloading({required this.percentCompleted});

  @override
  final int percentCompleted;

  @override
  String toString() {
    return 'QueryThreadAttachmentState.downloading(percentCompleted: $percentCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryThreadAttachmentDownloading &&
            (identical(other.percentCompleted, percentCompleted) ||
                other.percentCompleted == percentCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percentCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryThreadAttachmentDownloadingCopyWith<
          _$_QueryThreadAttachmentDownloading>
      get copyWith => __$$_QueryThreadAttachmentDownloadingCopyWithImpl<
          _$_QueryThreadAttachmentDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attachmentPath) downloaded,
    required TResult Function(int percentCompleted) downloading,
    required TResult Function(String downloadPath, String? downloadingError)
        notDownloaded,
  }) {
    return downloading(percentCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attachmentPath)? downloaded,
    TResult? Function(int percentCompleted)? downloading,
    TResult? Function(String downloadPath, String? downloadingError)?
        notDownloaded,
  }) {
    return downloading?.call(percentCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attachmentPath)? downloaded,
    TResult Function(int percentCompleted)? downloading,
    TResult Function(String downloadPath, String? downloadingError)?
        notDownloaded,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(percentCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryThreadAttachmentDownloaded value)
        downloaded,
    required TResult Function(_QueryThreadAttachmentDownloading value)
        downloading,
    required TResult Function(_QueryThreadAttachmentNotDownloaded value)
        notDownloaded,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult? Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult? Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _QueryThreadAttachmentDownloading
    implements QueryThreadAttachmentState {
  const factory _QueryThreadAttachmentDownloading(
          {required final int percentCompleted}) =
      _$_QueryThreadAttachmentDownloading;

  int get percentCompleted;
  @JsonKey(ignore: true)
  _$$_QueryThreadAttachmentDownloadingCopyWith<
          _$_QueryThreadAttachmentDownloading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryThreadAttachmentNotDownloadedCopyWith<$Res> {
  factory _$$_QueryThreadAttachmentNotDownloadedCopyWith(
          _$_QueryThreadAttachmentNotDownloaded value,
          $Res Function(_$_QueryThreadAttachmentNotDownloaded) then) =
      __$$_QueryThreadAttachmentNotDownloadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String downloadPath, String? downloadingError});
}

/// @nodoc
class __$$_QueryThreadAttachmentNotDownloadedCopyWithImpl<$Res>
    extends _$QueryThreadAttachmentStateCopyWithImpl<$Res,
        _$_QueryThreadAttachmentNotDownloaded>
    implements _$$_QueryThreadAttachmentNotDownloadedCopyWith<$Res> {
  __$$_QueryThreadAttachmentNotDownloadedCopyWithImpl(
      _$_QueryThreadAttachmentNotDownloaded _value,
      $Res Function(_$_QueryThreadAttachmentNotDownloaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadPath = null,
    Object? downloadingError = freezed,
  }) {
    return _then(_$_QueryThreadAttachmentNotDownloaded(
      downloadPath: null == downloadPath
          ? _value.downloadPath
          : downloadPath // ignore: cast_nullable_to_non_nullable
              as String,
      downloadingError: freezed == downloadingError
          ? _value.downloadingError
          : downloadingError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_QueryThreadAttachmentNotDownloaded
    implements _QueryThreadAttachmentNotDownloaded {
  const _$_QueryThreadAttachmentNotDownloaded(
      {required this.downloadPath, this.downloadingError});

  @override
  final String downloadPath;
  @override
  final String? downloadingError;

  @override
  String toString() {
    return 'QueryThreadAttachmentState.notDownloaded(downloadPath: $downloadPath, downloadingError: $downloadingError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryThreadAttachmentNotDownloaded &&
            (identical(other.downloadPath, downloadPath) ||
                other.downloadPath == downloadPath) &&
            (identical(other.downloadingError, downloadingError) ||
                other.downloadingError == downloadingError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, downloadPath, downloadingError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryThreadAttachmentNotDownloadedCopyWith<
          _$_QueryThreadAttachmentNotDownloaded>
      get copyWith => __$$_QueryThreadAttachmentNotDownloadedCopyWithImpl<
          _$_QueryThreadAttachmentNotDownloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attachmentPath) downloaded,
    required TResult Function(int percentCompleted) downloading,
    required TResult Function(String downloadPath, String? downloadingError)
        notDownloaded,
  }) {
    return notDownloaded(downloadPath, downloadingError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attachmentPath)? downloaded,
    TResult? Function(int percentCompleted)? downloading,
    TResult? Function(String downloadPath, String? downloadingError)?
        notDownloaded,
  }) {
    return notDownloaded?.call(downloadPath, downloadingError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attachmentPath)? downloaded,
    TResult Function(int percentCompleted)? downloading,
    TResult Function(String downloadPath, String? downloadingError)?
        notDownloaded,
    required TResult orElse(),
  }) {
    if (notDownloaded != null) {
      return notDownloaded(downloadPath, downloadingError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryThreadAttachmentDownloaded value)
        downloaded,
    required TResult Function(_QueryThreadAttachmentDownloading value)
        downloading,
    required TResult Function(_QueryThreadAttachmentNotDownloaded value)
        notDownloaded,
  }) {
    return notDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult? Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult? Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
  }) {
    return notDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryThreadAttachmentDownloaded value)? downloaded,
    TResult Function(_QueryThreadAttachmentDownloading value)? downloading,
    TResult Function(_QueryThreadAttachmentNotDownloaded value)? notDownloaded,
    required TResult orElse(),
  }) {
    if (notDownloaded != null) {
      return notDownloaded(this);
    }
    return orElse();
  }
}

abstract class _QueryThreadAttachmentNotDownloaded
    implements QueryThreadAttachmentState {
  const factory _QueryThreadAttachmentNotDownloaded(
      {required final String downloadPath,
      final String? downloadingError}) = _$_QueryThreadAttachmentNotDownloaded;

  String get downloadPath;
  String? get downloadingError;
  @JsonKey(ignore: true)
  _$$_QueryThreadAttachmentNotDownloadedCopyWith<
          _$_QueryThreadAttachmentNotDownloaded>
      get copyWith => throw _privateConstructorUsedError;
}
