// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClijeoCustomerDto _$ClijeoCustomerDtoFromJson(Map<String, dynamic> json) {
  return _ClijeoCustomerDto.fromJson(json);
}

/// @nodoc
mixin _$ClijeoCustomerDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClijeoCustomerDtoCopyWith<ClijeoCustomerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoCustomerDtoCopyWith<$Res> {
  factory $ClijeoCustomerDtoCopyWith(
          ClijeoCustomerDto value, $Res Function(ClijeoCustomerDto) then) =
      _$ClijeoCustomerDtoCopyWithImpl<$Res, ClijeoCustomerDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ClijeoCustomerDtoCopyWithImpl<$Res, $Val extends ClijeoCustomerDto>
    implements $ClijeoCustomerDtoCopyWith<$Res> {
  _$ClijeoCustomerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClijeoCustomerDtoCopyWith<$Res>
    implements $ClijeoCustomerDtoCopyWith<$Res> {
  factory _$$_ClijeoCustomerDtoCopyWith(_$_ClijeoCustomerDto value,
          $Res Function(_$_ClijeoCustomerDto) then) =
      __$$_ClijeoCustomerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ClijeoCustomerDtoCopyWithImpl<$Res>
    extends _$ClijeoCustomerDtoCopyWithImpl<$Res, _$_ClijeoCustomerDto>
    implements _$$_ClijeoCustomerDtoCopyWith<$Res> {
  __$$_ClijeoCustomerDtoCopyWithImpl(
      _$_ClijeoCustomerDto _value, $Res Function(_$_ClijeoCustomerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ClijeoCustomerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClijeoCustomerDto
    with DiagnosticableTreeMixin
    implements _ClijeoCustomerDto {
  const _$_ClijeoCustomerDto({required this.id, required this.name});

  factory _$_ClijeoCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoCustomerDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClijeoCustomerDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClijeoCustomerDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoCustomerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoCustomerDtoCopyWith<_$_ClijeoCustomerDto> get copyWith =>
      __$$_ClijeoCustomerDtoCopyWithImpl<_$_ClijeoCustomerDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoCustomerDtoToJson(
      this,
    );
  }
}

abstract class _ClijeoCustomerDto implements ClijeoCustomerDto {
  const factory _ClijeoCustomerDto(
      {required final String id,
      required final String name}) = _$_ClijeoCustomerDto;

  factory _ClijeoCustomerDto.fromJson(Map<String, dynamic> json) =
      _$_ClijeoCustomerDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ClijeoCustomerDtoCopyWith<_$_ClijeoCustomerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
