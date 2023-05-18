import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_query.g.dart';
part 'user_query.freezed.dart';

@freezed
class UserQuery with _$UserQuery {
  const factory UserQuery(
      {required int id,
      required String title,
      required String content,
      required bool closed,
      required String timestamp,
      required int responseCount}) = _UserQuery;

  factory UserQuery.fromJson(Map<String, dynamic> json) =>
      _UserQuery.fromJson(json);
}
