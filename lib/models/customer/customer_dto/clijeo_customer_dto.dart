import 'package:clijeo_admin/models/query/query.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_customer_dto.g.dart';
part 'clijeo_customer_dto.freezed.dart';

@freezed
class ClijeoCustomerDto with _$ClijeoCustomerDto {
  const factory ClijeoCustomerDto({required String id, required String name}) =
      _ClijeoCustomerDto;

  factory ClijeoCustomerDto.fromJson(Map<String, dynamic> json) =>
      _ClijeoCustomerDto.fromJson(json);
}
