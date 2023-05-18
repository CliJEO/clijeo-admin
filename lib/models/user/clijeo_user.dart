import 'package:clijeo_public/models/query/query.dart';
import 'package:clijeo_public/models/user/query/user_query.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_user.g.dart';
part 'clijeo_user.freezed.dart';

@freezed
class ClijeoUser with _$ClijeoUser {
  const factory ClijeoUser(
      {required String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location,
      required List<UserQuery> queries}) = _ClijeoUser;

  // factory ClijeoUser.empty() {
  //   return const ClijeoUser(name: "", queries: []);
  // }

  factory ClijeoUser.fromJson(Map<String, dynamic> json) =>
      _ClijeoUser.fromJson(json);
}
