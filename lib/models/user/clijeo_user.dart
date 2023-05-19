import 'package:clijeo_admin/models/query/query.dart';
import 'package:clijeo_admin/models/user/query/user_query.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_user.g.dart';
part 'clijeo_user.freezed.dart';

@freezed
class ClijeoUser with _$ClijeoUser {
  const factory ClijeoUser(
      {required String name,
      required List<UserQuery> activeQueries,
      required List<UserQuery> archivedQueries}) = _ClijeoUser;

  // factory ClijeoUser.empty() {
  //   return const ClijeoUser(name: "", queries: []);
  // }

  factory ClijeoUser.fromJson(Map<String, dynamic> json) =>
      _ClijeoUser.fromJson(json);
}
