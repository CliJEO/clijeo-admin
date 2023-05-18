// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueryResponse _$QueryResponseFromJson(Map<String, dynamic> json) {
  return _QueryResponse.fromJson(json);
}

/// @nodoc
mixin _$QueryResponse {
  String get content => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  QueryResponseAdminDetails? get admin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseCopyWith<QueryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseCopyWith<$Res> {
  factory $QueryResponseCopyWith(
          QueryResponse value, $Res Function(QueryResponse) then) =
      _$QueryResponseCopyWithImpl<$Res, QueryResponse>;
  @useResult
  $Res call(
      {String content, String timestamp, QueryResponseAdminDetails? admin});

  $QueryResponseAdminDetailsCopyWith<$Res>? get admin;
}

/// @nodoc
class _$QueryResponseCopyWithImpl<$Res, $Val extends QueryResponse>
    implements $QueryResponseCopyWith<$Res> {
  _$QueryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? timestamp = null,
    Object? admin = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as QueryResponseAdminDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryResponseAdminDetailsCopyWith<$Res>? get admin {
    if (_value.admin == null) {
      return null;
    }

    return $QueryResponseAdminDetailsCopyWith<$Res>(_value.admin!, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QueryResponseCopyWith<$Res>
    implements $QueryResponseCopyWith<$Res> {
  factory _$$_QueryResponseCopyWith(
          _$_QueryResponse value, $Res Function(_$_QueryResponse) then) =
      __$$_QueryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, String timestamp, QueryResponseAdminDetails? admin});

  @override
  $QueryResponseAdminDetailsCopyWith<$Res>? get admin;
}

/// @nodoc
class __$$_QueryResponseCopyWithImpl<$Res>
    extends _$QueryResponseCopyWithImpl<$Res, _$_QueryResponse>
    implements _$$_QueryResponseCopyWith<$Res> {
  __$$_QueryResponseCopyWithImpl(
      _$_QueryResponse _value, $Res Function(_$_QueryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? timestamp = null,
    Object? admin = freezed,
  }) {
    return _then(_$_QueryResponse(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as QueryResponseAdminDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueryResponse with DiagnosticableTreeMixin implements _QueryResponse {
  const _$_QueryResponse(
      {required this.content, required this.timestamp, this.admin});

  factory _$_QueryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QueryResponseFromJson(json);

  @override
  final String content;
  @override
  final String timestamp;
  @override
  final QueryResponseAdminDetails? admin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryResponse(content: $content, timestamp: $timestamp, admin: $admin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryResponse'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('admin', admin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryResponse &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.admin, admin) || other.admin == admin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, timestamp, admin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryResponseCopyWith<_$_QueryResponse> get copyWith =>
      __$$_QueryResponseCopyWithImpl<_$_QueryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryResponseToJson(
      this,
    );
  }
}

abstract class _QueryResponse implements QueryResponse {
  const factory _QueryResponse(
      {required final String content,
      required final String timestamp,
      final QueryResponseAdminDetails? admin}) = _$_QueryResponse;

  factory _QueryResponse.fromJson(Map<String, dynamic> json) =
      _$_QueryResponse.fromJson;

  @override
  String get content;
  @override
  String get timestamp;
  @override
  QueryResponseAdminDetails? get admin;
  @override
  @JsonKey(ignore: true)
  _$$_QueryResponseCopyWith<_$_QueryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
