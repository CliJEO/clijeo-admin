// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClijeoCustomer _$ClijeoCustomerFromJson(Map<String, dynamic> json) {
  return _ClijeoCustomer.fromJson(json);
}

/// @nodoc
mixin _$ClijeoCustomer {
  String get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClijeoCustomerCopyWith<ClijeoCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoCustomerCopyWith<$Res> {
  factory $ClijeoCustomerCopyWith(
          ClijeoCustomer value, $Res Function(ClijeoCustomer) then) =
      _$ClijeoCustomerCopyWithImpl<$Res, ClijeoCustomer>;
  @useResult
  $Res call(
      {String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location});
}

/// @nodoc
class _$ClijeoCustomerCopyWithImpl<$Res, $Val extends ClijeoCustomer>
    implements $ClijeoCustomerCopyWith<$Res> {
  _$ClijeoCustomerCopyWithImpl(this._value, this._then);

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
abstract class _$$_ClijeoCustomerCopyWith<$Res>
    implements $ClijeoCustomerCopyWith<$Res> {
  factory _$$_ClijeoCustomerCopyWith(
          _$_ClijeoCustomer value, $Res Function(_$_ClijeoCustomer) then) =
      __$$_ClijeoCustomerCopyWithImpl<$Res>;
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
class __$$_ClijeoCustomerCopyWithImpl<$Res>
    extends _$ClijeoCustomerCopyWithImpl<$Res, _$_ClijeoCustomer>
    implements _$$_ClijeoCustomerCopyWith<$Res> {
  __$$_ClijeoCustomerCopyWithImpl(
      _$_ClijeoCustomer _value, $Res Function(_$_ClijeoCustomer) _then)
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
    return _then(_$_ClijeoCustomer(
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
class _$_ClijeoCustomer
    with DiagnosticableTreeMixin
    implements _ClijeoCustomer {
  const _$_ClijeoCustomer(
      {required this.name,
      this.age,
      this.gender,
      this.phoneNumber,
      this.location});

  factory _$_ClijeoCustomer.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoCustomerFromJson(json);

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
    return 'ClijeoCustomer(name: $name, age: $age, gender: $gender, phoneNumber: $phoneNumber, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClijeoCustomer'))
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
            other is _$_ClijeoCustomer &&
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
  _$$_ClijeoCustomerCopyWith<_$_ClijeoCustomer> get copyWith =>
      __$$_ClijeoCustomerCopyWithImpl<_$_ClijeoCustomer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoCustomerToJson(
      this,
    );
  }
}

abstract class _ClijeoCustomer implements ClijeoCustomer {
  const factory _ClijeoCustomer(
      {required final String name,
      final int? age,
      final String? gender,
      final String? phoneNumber,
      final String? location}) = _$_ClijeoCustomer;

  factory _ClijeoCustomer.fromJson(Map<String, dynamic> json) =
      _$_ClijeoCustomer.fromJson;

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
  _$$_ClijeoCustomerCopyWith<_$_ClijeoCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}
