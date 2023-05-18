import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_response_admin_details.g.dart';
part 'query_response_admin_details.freezed.dart';

@freezed
class QueryResponseAdminDetails with _$QueryResponseAdminDetails {
  const factory QueryResponseAdminDetails({
    required String name,
    required String profilePicture,
  }) = _QueryResponseAdminDetails;

  factory QueryResponseAdminDetails.fromJson(Map<String, dynamic> json) =>
      _QueryResponseAdminDetails.fromJson(json);
}
