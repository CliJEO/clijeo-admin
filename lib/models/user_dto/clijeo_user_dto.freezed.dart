// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClijeoUserDto _$ClijeoUserDtoFromJson(Map<String, dynamic> json) {
  return _ClijeoUserDto.fromJson(json);
}

/// @nodoc
mixin _$ClijeoUserDto {
  String get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClijeoUserDtoCopyWith<ClijeoUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoUserDtoCopyWith<$Res> {
  factory $ClijeoUserDtoCopyWith(
          ClijeoUserDto value, $Res Function(ClijeoUserDto) then) =
      _$ClijeoUserDtoCopyWithImpl<$Res, ClijeoUserDto>;
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location});
}

/// @nodoc
class _$ClijeoUserDtoCopyWithImpl<$Res, $Val extends ClijeoUserDto>
    implements $ClijeoUserDtoCopyWith<$Res> {
  _$ClijeoUserDtoCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClijeoUserDtoCopyWith<$Res>
    implements $ClijeoUserDtoCopyWith<$Res> {
  factory _$$_ClijeoUserDtoCopyWith(
          _$_ClijeoUserDto value, $Res Function(_$_ClijeoUserDto) then) =
      __$$_ClijeoUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location});
}

/// @nodoc
class __$$_ClijeoUserDtoCopyWithImpl<$Res>
    extends _$ClijeoUserDtoCopyWithImpl<$Res, _$_ClijeoUserDto>
    implements _$$_ClijeoUserDtoCopyWith<$Res> {
  __$$_ClijeoUserDtoCopyWithImpl(
      _$_ClijeoUserDto _value, $Res Function(_$_ClijeoUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_ClijeoUserDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClijeoUserDto with DiagnosticableTreeMixin implements _ClijeoUserDto {
  const _$_ClijeoUserDto(
      {required this.name,
      this.age,
      this.gender,
      this.phoneNumber,
      this.location});

  factory _$_ClijeoUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoUserDtoFromJson(json);

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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClijeoUserDto(name: $name, age: $age, gender: $gender, phoneNumber: $phoneNumber, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClijeoUserDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoUserDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, age, gender, phoneNumber, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoUserDtoCopyWith<_$_ClijeoUserDto> get copyWith =>
      __$$_ClijeoUserDtoCopyWithImpl<_$_ClijeoUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoUserDtoToJson(
      this,
    );
  }
}

abstract class _ClijeoUserDto implements ClijeoUserDto {
  const factory _ClijeoUserDto(
      {required final String name,
      final int? age,
      final String? gender,
      final String? phoneNumber,
      final String? location}) = _$_ClijeoUserDto;

  factory _ClijeoUserDto.fromJson(Map<String, dynamic> json) =
      _$_ClijeoUserDto.fromJson;

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
  @JsonKey(ignore: true)
  _$$_ClijeoUserDtoCopyWith<_$_ClijeoUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
