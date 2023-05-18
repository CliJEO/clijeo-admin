import 'package:clijeo_public/models/query/query.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_user_state.freezed.dart';

@freezed
abstract class ClijeoUserState with _$ClijeoUserState {
  const factory ClijeoUserState.noUser() = _ClijeoUserNoUser;
  const factory ClijeoUserState.stable(
      {required ClijeoUser user, String? refreshError}) = _ClijeoUserStable;
  const factory ClijeoUserState.loading() = _ClijeoUserLoading;
}
