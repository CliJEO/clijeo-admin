import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_attachment/query_thread_attachment_state.dart';
import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';

class QueryThreadAttachmentController extends ChangeNotifier {
  QueryThreadAttachmentState state;
  bool _disposed = false;
  final CancelToken _downloadCancelToken = CancelToken();
  QueryThreadAttachmentController({required Attachment attachment})
      : state = attachment.isLocal
            ? QueryThreadAttachmentState.downloaded(
                attachmentPath: attachment.path)
            : QueryThreadAttachmentState.notDownloaded(
                downloadPath: attachment.path);

  @override
  void dispose() {
    _disposed = true;
    _downloadCancelToken.cancel();
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  Future<void> download() async {
    state = await state.maybeMap(
        notDownloaded: (oldState) async {
          try {
            state = const QueryThreadAttachmentState.downloading(
                percentCompleted: 0);
            notifyListeners();

            Directory directory = await getApplicationDocumentsDirectory();
            String filepath =
                "${directory.path}/${oldState.downloadPath.split("/").last}";
            File file = File(filepath);
            final result = await DioBase.dioInstance.get(
              oldState.downloadPath,
              cancelToken: _downloadCancelToken,
              onReceiveProgress: (count, total) {
                state = QueryThreadAttachmentState.downloading(
                    percentCompleted: ((count / total) * 100).toInt());
                notifyListeners();
              },
              options: Options(headers: {
                'Authorization': 'Bearer ${BackendAuth.getToken()}',
              }, responseType: ResponseType.bytes),
            );

            file.writeAsBytesSync(result.data);
            return QueryThreadAttachmentState.downloaded(
                attachmentPath: filepath);
          } on DioError catch (e) {
            log("[QueryThreadAttachmentController] (downloadAttachment) DioError:${e.message}");
            return oldState.copyWith(
                downloadingError: ErrorController.downloadAttachmentError);
          } on Exception catch (e) {
            log("[QueryThreadAttachmentController] (downloadAttachment) DioError:${e.toString()}");
            return oldState.copyWith(
                downloadingError: ErrorController.downloadAttachmentError);
          }
        },
        orElse: () => state);
    notifyListeners();
  }

  Future<void> open() async {
    await state.maybeWhen(
        downloaded: (attachmentPath) async {
          await OpenFile.open(attachmentPath);
        },
        orElse: () {});
  }
}
