import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_customer.g.dart';
part 'clijeo_customer.freezed.dart';

@freezed
class ClijeoCustomer with _$ClijeoCustomer {
  const factory ClijeoCustomer(
      {required String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location}) = _ClijeoCustomer;

  factory ClijeoCustomer.fromJson(Map<String, dynamic> json) =>
      _ClijeoCustomer.fromJson(json);
}
