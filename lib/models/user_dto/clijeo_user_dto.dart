import 'package:clijeo_public/models/query/query.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_user_dto.g.dart';
part 'clijeo_user_dto.freezed.dart';

@freezed
class ClijeoUserDto with _$ClijeoUserDto {
  const factory ClijeoUserDto(
      {required String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location}) = _ClijeoUserDto;

  factory ClijeoUserDto.fromJson(Map<String, dynamic> json) =>
      _ClijeoUserDto.fromJson(json);
}
