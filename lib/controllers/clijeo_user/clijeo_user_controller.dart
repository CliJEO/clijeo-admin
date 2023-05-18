import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_state.dart';
import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ClijeoUserController extends ChangeNotifier {
  ClijeoUserState state;

  ClijeoUserController() : state = const ClijeoUserState.noUser();

  static bool isFirstLoggedInUser(ClijeoUser user) {
    // New user with unfilled profile
    if (user.age == null &&
        user.gender == null &&
        user.location == null &&
        user.phoneNumber == null) {
      return true;
    }
    return false;
  }

  Future<void> refreshUser() async {
    state = const ClijeoUserState.loading();
    notifyListeners();
    try {
      final result = await DioBase.dioInstance.get(
        ApiUtils.userUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${BackendAuth.getToken()}',
          },
        ),
      );
      final user = ClijeoUser.fromJson(result.data);
      state = ClijeoUserState.stable(user: user);
    } on DioError catch (e) {
      log("ClijeoUserController] (refreshUser) DioError: ${e.message}");
      state = state.maybeMap(
          stable: (state) =>
              state.copyWith(refreshError: ErrorController.refreshUserError),
          orElse: () => state);
    } on Error catch (e) {
      log("ClijeoUserController] (refreshUser) Error: ${e.toString}");
      state = state.maybeMap(
          stable: (state) =>
              state.copyWith(refreshError: ErrorController.refreshUserError),
          orElse: () => state);
    }

    notifyListeners();
  }

  void clearUserState() {
    state = const ClijeoUserState.noUser();
    notifyListeners();
  }
}
