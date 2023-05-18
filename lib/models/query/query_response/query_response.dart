import 'package:clijeo_public/models/query/admin_details/query_response_admin_details.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_response.g.dart';
part 'query_response.freezed.dart';

@freezed
class QueryResponse with _$QueryResponse {
  const factory QueryResponse(
      {required String content,
      required String timestamp,
      QueryResponseAdminDetails? admin}) = _QueryResponse;

  factory QueryResponse.fromJson(Map<String, dynamic> json) =>
      _QueryResponse.fromJson(json);
}
