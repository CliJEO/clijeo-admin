import 'package:clijeo_public/models/query/admin_details/query_response_admin_details.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_media.g.dart';
part 'query_media.freezed.dart';

@freezed
class QueryMedia with _$QueryMedia {
  const factory QueryMedia({required String filename}) = _QueryMedia;

  factory QueryMedia.fromJson(Map<String, dynamic> json) =>
      _QueryMedia.fromJson(json);
}
