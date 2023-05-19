import 'package:clijeo_admin/models/user_dto/clijeo_user_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_response.g.dart';
part 'query_response.freezed.dart';

@freezed
class QueryResponse with _$QueryResponse {
  const factory QueryResponse(
      {required String content,
      required String timestamp,
      ClijeoUserDto? admin}) = _QueryResponse;

  factory QueryResponse.fromJson(Map<String, dynamic> json) =>
      _QueryResponse.fromJson(json);
}
