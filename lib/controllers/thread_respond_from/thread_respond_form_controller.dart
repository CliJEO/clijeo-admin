import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/controllers/thread_respond_from/thread_respond_form_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ThreadRespondFormController extends ChangeNotifier {
  ThreadRespondFormState state = const ThreadRespondFormState.stable();

  void updateStableStateBody(String? updatedBody) => state = state.maybeMap(
      stable: (value) => value.copyWith(body: updatedBody),
      orElse: () => state);

  Future<void> replyInThread(int queryId) async {
    state = await state.maybeMap(
        stable: (oldState) async {
          state = const ThreadRespondFormState.loading();
          notifyListeners();

          try {
            await DioBase.dioInstance.post(ApiUtils.replyQueryUrl(queryId),
                options: Options(
                  headers: {
                    'Authorization': 'Bearer ${BackendAuth.getToken()}',
                  },
                ),
                data: {"content": oldState.body});
            return const ThreadRespondFormState.completed();
          } on DioError catch (e) {
            log("[ThreadRespondFormController] (replyInThread) DioError:${e.message}");
            return oldState.copyWith(
                replyError: ErrorController.replyInThreadError);
          }
        },
        orElse: () => state);
    notifyListeners();
  }
}
