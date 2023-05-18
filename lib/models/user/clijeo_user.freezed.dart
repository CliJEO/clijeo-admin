// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClijeoUser _$ClijeoUserFromJson(Map<String, dynamic> json) {
  return _ClijeoUser.fromJson(json);
}

/// @nodoc
mixin _$ClijeoUser {
  String get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<UserQuery> get queries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClijeoUserCopyWith<ClijeoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoUserCopyWith<$Res> {
  factory $ClijeoUserCopyWith(
          ClijeoUser value, $Res Function(ClijeoUser) then) =
      _$ClijeoUserCopyWithImpl<$Res, ClijeoUser>;
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location,
      List<UserQuery> queries});
}

/// @nodoc
class _$ClijeoUserCopyWithImpl<$Res, $Val extends ClijeoUser>
    implements $ClijeoUserCopyWith<$Res> {
  _$ClijeoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? queries = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      queries: null == queries
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<UserQuery>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClijeoUserCopyWith<$Res>
    implements $ClijeoUserCopyWith<$Res> {
  factory _$$_ClijeoUserCopyWith(
          _$_ClijeoUser value, $Res Function(_$_ClijeoUser) then) =
      __$$_ClijeoUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location,
      List<UserQuery> queries});
}

/// @nodoc
class __$$_ClijeoUserCopyWithImpl<$Res>
    extends _$ClijeoUserCopyWithImpl<$Res, _$_ClijeoUser>
    implements _$$_ClijeoUserCopyWith<$Res> {
  __$$_ClijeoUserCopyWithImpl(
      _$_ClijeoUser _value, $Res Function(_$_ClijeoUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? queries = null,
  }) {
    return _then(_$_ClijeoUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<UserQuery>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClijeoUser with DiagnosticableTreeMixin implements _ClijeoUser {
  const _$_ClijeoUser(
      {required this.name,
      this.age,
      this.gender,
      this.phoneNumber,
      this.location,
      required final List<UserQuery> queries})
      : _queries = queries;

  factory _$_ClijeoUser.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoUserFromJson(json);

  @override
  final String name;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final String? phoneNumber;
  @override
  final String? location;
  final List<UserQuery> _queries;
  @override
  List<UserQuery> get queries {
    if (_queries is EqualUnmodifiableListView) return _queries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queries);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClijeoUser(name: $name, age: $age, gender: $gender, phoneNumber: $phoneNumber, location: $location, queries: $queries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClijeoUser'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('queries', queries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age, gender, phoneNumber,
      location, const DeepCollectionEquality().hash(_queries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoUserCopyWith<_$_ClijeoUser> get copyWith =>
      __$$_ClijeoUserCopyWithImpl<_$_ClijeoUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoUserToJson(
      this,
    );
  }
}

abstract class _ClijeoUser implements ClijeoUser {
  const factory _ClijeoUser(
      {required final String name,
      final int? age,
      final String? gender,
      final String? phoneNumber,
      final String? location,
      required final List<UserQuery> queries}) = _$_ClijeoUser;

  factory _ClijeoUser.fromJson(Map<String, dynamic> json) =
      _$_ClijeoUser.fromJson;

  @override
  String get name;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  String? get phoneNumber;
  @override
  String? get location;
  @override
  List<UserQuery> get queries;
  @override
  @JsonKey(ignore: true)
  _$$_ClijeoUserCopyWith<_$_ClijeoUser> get copyWith =>
      throw _privateConstructorUsedError;
}
