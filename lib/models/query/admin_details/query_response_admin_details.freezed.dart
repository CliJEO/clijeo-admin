// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_response_admin_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueryResponseAdminDetails _$QueryResponseAdminDetailsFromJson(
    Map<String, dynamic> json) {
  return _QueryResponseAdminDetails.fromJson(json);
}

/// @nodoc
mixin _$QueryResponseAdminDetails {
  String get name => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseAdminDetailsCopyWith<QueryResponseAdminDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseAdminDetailsCopyWith<$Res> {
  factory $QueryResponseAdminDetailsCopyWith(QueryResponseAdminDetails value,
          $Res Function(QueryResponseAdminDetails) then) =
      _$QueryResponseAdminDetailsCopyWithImpl<$Res, QueryResponseAdminDetails>;
  @useResult
  $Res call({String name, String profilePicture});
}

/// @nodoc
class _$QueryResponseAdminDetailsCopyWithImpl<$Res,
        $Val extends QueryResponseAdminDetails>
    implements $QueryResponseAdminDetailsCopyWith<$Res> {
  _$QueryResponseAdminDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryResponseAdminDetailsCopyWith<$Res>
    implements $QueryResponseAdminDetailsCopyWith<$Res> {
  factory _$$_QueryResponseAdminDetailsCopyWith(
          _$_QueryResponseAdminDetails value,
          $Res Function(_$_QueryResponseAdminDetails) then) =
      __$$_QueryResponseAdminDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String profilePicture});
}

/// @nodoc
class __$$_QueryResponseAdminDetailsCopyWithImpl<$Res>
    extends _$QueryResponseAdminDetailsCopyWithImpl<$Res,
        _$_QueryResponseAdminDetails>
    implements _$$_QueryResponseAdminDetailsCopyWith<$Res> {
  __$$_QueryResponseAdminDetailsCopyWithImpl(
      _$_QueryResponseAdminDetails _value,
      $Res Function(_$_QueryResponseAdminDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? profilePicture = null,
  }) {
    return _then(_$_QueryResponseAdminDetails(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueryResponseAdminDetails
    with DiagnosticableTreeMixin
    implements _QueryResponseAdminDetails {
  const _$_QueryResponseAdminDetails(
      {required this.name, required this.profilePicture});

  factory _$_QueryResponseAdminDetails.fromJson(Map<String, dynamic> json) =>
      _$$_QueryResponseAdminDetailsFromJson(json);

  @override
  final String name;
  @override
  final String profilePicture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryResponseAdminDetails(name: $name, profilePicture: $profilePicture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryResponseAdminDetails'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profilePicture', profilePicture));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryResponseAdminDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryResponseAdminDetailsCopyWith<_$_QueryResponseAdminDetails>
      get copyWith => __$$_QueryResponseAdminDetailsCopyWithImpl<
          _$_QueryResponseAdminDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryResponseAdminDetailsToJson(
      this,
    );
  }
}

abstract class _QueryResponseAdminDetails implements QueryResponseAdminDetails {
  const factory _QueryResponseAdminDetails(
      {required final String name,
      required final String profilePicture}) = _$_QueryResponseAdminDetails;

  factory _QueryResponseAdminDetails.fromJson(Map<String, dynamic> json) =
      _$_QueryResponseAdminDetails.fromJson;

  @override
  String get name;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_QueryResponseAdminDetailsCopyWith<_$_QueryResponseAdminDetails>
      get copyWith => throw _privateConstructorUsedError;
}
