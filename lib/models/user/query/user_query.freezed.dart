// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserQuery _$UserQueryFromJson(Map<String, dynamic> json) {
  return _UserQuery.fromJson(json);
}

/// @nodoc
mixin _$UserQuery {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  int get responseCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserQueryCopyWith<UserQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserQueryCopyWith<$Res> {
  factory $UserQueryCopyWith(UserQuery value, $Res Function(UserQuery) then) =
      _$UserQueryCopyWithImpl<$Res, UserQuery>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      bool closed,
      String timestamp,
      int responseCount});
}

/// @nodoc
class _$UserQueryCopyWithImpl<$Res, $Val extends UserQuery>
    implements $UserQueryCopyWith<$Res> {
  _$UserQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? closed = null,
    Object? timestamp = null,
    Object? responseCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      responseCount: null == responseCount
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserQueryCopyWith<$Res> implements $UserQueryCopyWith<$Res> {
  factory _$$_UserQueryCopyWith(
          _$_UserQuery value, $Res Function(_$_UserQuery) then) =
      __$$_UserQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      bool closed,
      String timestamp,
      int responseCount});
}

/// @nodoc
class __$$_UserQueryCopyWithImpl<$Res>
    extends _$UserQueryCopyWithImpl<$Res, _$_UserQuery>
    implements _$$_UserQueryCopyWith<$Res> {
  __$$_UserQueryCopyWithImpl(
      _$_UserQuery _value, $Res Function(_$_UserQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? closed = null,
    Object? timestamp = null,
    Object? responseCount = null,
  }) {
    return _then(_$_UserQuery(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      responseCount: null == responseCount
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserQuery with DiagnosticableTreeMixin implements _UserQuery {
  const _$_UserQuery(
      {required this.id,
      required this.title,
      required this.content,
      required this.closed,
      required this.timestamp,
      required this.responseCount});

  factory _$_UserQuery.fromJson(Map<String, dynamic> json) =>
      _$$_UserQueryFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool closed;
  @override
  final String timestamp;
  @override
  final int responseCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserQuery(id: $id, title: $title, content: $content, closed: $closed, timestamp: $timestamp, responseCount: $responseCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserQuery'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('closed', closed))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('responseCount', responseCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserQuery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.responseCount, responseCount) ||
                other.responseCount == responseCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, content, closed, timestamp, responseCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserQueryCopyWith<_$_UserQuery> get copyWith =>
      __$$_UserQueryCopyWithImpl<_$_UserQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserQueryToJson(
      this,
    );
  }
}

abstract class _UserQuery implements UserQuery {
  const factory _UserQuery(
      {required final int id,
      required final String title,
      required final String content,
      required final bool closed,
      required final String timestamp,
      required final int responseCount}) = _$_UserQuery;

  factory _UserQuery.fromJson(Map<String, dynamic> json) =
      _$_UserQuery.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get closed;
  @override
  String get timestamp;
  @override
  int get responseCount;
  @override
  @JsonKey(ignore: true)
  _$$_UserQueryCopyWith<_$_UserQuery> get copyWith =>
      throw _privateConstructorUsedError;
}
