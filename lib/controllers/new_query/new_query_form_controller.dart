import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_state.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file_plus/open_file_plus.dart';

class NewQueryFormController extends ChangeNotifier {
  NewQueryFormState state = const NewQueryFormState.stable();
  bool _disposed = false;
  final CancelToken _uploadCancelToken = CancelToken();

  @override
  void dispose() {
    _disposed = true;
    _uploadCancelToken.cancel();
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  void updateStableStateSubject(String? updatedSubject) =>
      state = state.maybeMap(
          stable: (value) => value.copyWith(subject: updatedSubject),
          orElse: () => state);

  void updateStableStateBody(String? updatedBody) => state = state.maybeMap(
      stable: (value) => value.copyWith(body: updatedBody),
      orElse: () => state);

  void updateStableStateVoiceAttachmentPath(String? path) {
    state = state.maybeMap(
        stable: (value) => value.copyWith(voiceAttachmentPath: path),
        orElse: () => state);
    notifyListeners();
  }

  void updateStableStateVoiceAttachmentError(String error) {
    state = state.maybeMap(
        stable: (value) => value.copyWith(
            voiceAttachmentError: error, voiceAttachmentPath: null),
        orElse: () => state);
    notifyListeners();
  }

  Future<void> registerQuery() async {
    state = await state.maybeMap(
        stable: (oldState) async {
          state = const NewQueryFormState.loading(percentCompleted: 0);
          notifyListeners();

          try {
            final formData = FormData.fromMap(
                {"title": oldState.subject, "content": oldState.body});

            if (oldState.voiceAttachmentPath != null) {
              formData.files.add(MapEntry("files",
                  MultipartFile.fromFileSync(oldState.voiceAttachmentPath!)));
            }

            if (oldState.otherAttachments != null) {
              formData.files.addAll(oldState.otherAttachments!.map((e) =>
                  MapEntry("files", MultipartFile.fromFileSync(e.path))));
            }

            await DioBase.dioInstance.post(ApiUtils.createQueryUrl,
                options: Options(
                  headers: {
                    'Authorization': 'Bearer ${BackendAuth.getToken()}',
                  },
                ), onSendProgress: (count, total) {
              state = NewQueryFormState.loading(
                  percentCompleted: ((count / total) * 100).toInt());
              notifyListeners();
            }, cancelToken: _uploadCancelToken, data: formData);

            return const NewQueryFormState.completed();
          } on DioError catch (e) {
            log("[NewQueryFormController] (registerQuery) DioError:${e.message}");
            return oldState.copyWith(
                registerQueryError: ErrorController.mapServerRegisterQueryError(
                    e.response?.data["message"]));
          }
        },
        orElse: () => state);
    notifyListeners();
  }

  void addFilesToOtherAttachments() async {
    try {
      // opens storage to pick multiple files
      // details of picked files are stored in the result object
      final result = await FilePicker.platform.pickFiles(allowMultiple: true);

      // if no file is picked
      if (result == null) return;

      // remove all files without a path
      result.files.retainWhere((element) => element.path != null);

      // obtain Attachment objects from the result object
      List<Attachment> newOtherAttachments = result.files
          .map((e) =>
              Attachment(filename: e.path!.split("/").last, path: e.path!))
          .toList();

      // update state with attachments
      state = state.maybeMap(
          stable: (value) {
            List<Attachment> otherAttachments = [];
            if (value.otherAttachments != null) {
              otherAttachments.addAll(value.otherAttachments!);
            }
            otherAttachments.addAll(newOtherAttachments);
            return value.copyWith(otherAttachments: otherAttachments);
          },
          orElse: () => state);

      notifyListeners();
    } on PlatformException catch (e) {
      log("[NewQueryFormController] (addFilesToOtherAttachments) Error:${e.message}");
      state = state.maybeMap(
          stable: (value) => value.copyWith(
              otherAttachmentError: ErrorController.fileAttachmentPermission,
              otherAttachments: null),
          orElse: () => state);
      notifyListeners();
    }
  }

  void removeFileFromOtherAttachments(int index) {
    state = state.maybeMap(
        stable: (value) {
          if (value.otherAttachments != null &&
              index < value.otherAttachments!.length) {
            List<Attachment> otherAttachments = [];
            otherAttachments.addAll(value.otherAttachments!);
            otherAttachments.removeAt(index);
            return value.copyWith(otherAttachments: otherAttachments);
          }
          return state;
        },
        orElse: () => state);
    notifyListeners();
  }

  Future<void> openFileFromOtherAttachments(int index) async {
    await state.maybeWhen(
        stable: (subject, body, voiceAttachmentPath, otherAttachments, _, __,
            ___) async {
          if (otherAttachments != null && index < otherAttachments.length) {
            await OpenFile.open(otherAttachments[index].path);
          }
        },
        orElse: () {});
  }
}
