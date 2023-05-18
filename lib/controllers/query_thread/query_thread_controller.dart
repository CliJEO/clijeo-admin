import 'dart:developer';
import 'dart:io';

import 'package:clijeo_admin/config.dart';
import 'package:clijeo_admin/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_admin/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_admin/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_admin/controllers/core/error/error_controller.dart';
import 'package:clijeo_admin/controllers/core/file/file_controller.dart';
import 'package:clijeo_admin/controllers/query_thread/query_thread_state.dart';
import 'package:clijeo_admin/models/attachment/attachment.dart';
import 'package:clijeo_admin/models/customer/clijeo_customer.dart';
import 'package:clijeo_admin/models/query/query.dart';
import 'package:clijeo_admin/models/query/query_response/query_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';

class QueryThreadController extends ChangeNotifier {
  QueryThreadState state = const QueryThreadState.initial();
  int queryId;

  QueryThreadController({required this.queryId});

  static String getResponderName(
          QueryResponse queryResponse, String customerName) =>
      queryResponse.admin == null ? customerName : "Admin";

  Future<void> getQueryDetails() async {
    try {
      final result = await DioBase.dioInstance.get(
        ApiUtils.getQueryDetailsUrl(queryId),
        options: Options(
          headers: {
            'Authorization': 'Bearer ${BackendAuth.getToken()}',
          },
        ),
      );
      final query = Query.fromJson(result.data);
      final attachments = await _loadAttachments(query);
      final customer = await _getCustomer(query.user.id);

      if (attachments == null) {
        state = QueryThreadState.stable(
            query: query,
            customer: customer,
            voiceAttachments: [],
            otherAttachments: [],
            attachmentError: ErrorController.loadingAttachmentError);
      } else {
        state = QueryThreadState.stable(
            query: query,
            customer: customer,
            voiceAttachments: attachments["audio"]!,
            otherAttachments: attachments["other"]!);
      }
    } on DioError catch (e) {
      log("[QueryThreadController] (getQueryDetails) DioError:${e.message}");
      state = const QueryThreadState.error();
    } on Error catch (e) {
      log("[QueryThreadController] (getQueryDetails) Error:${e.toString}");
      state = const QueryThreadState.error();
    }
    notifyListeners();
  }

  Future<Map<String, List<Attachment>>?> _loadAttachments(Query query) async {
    Map<String, List<Attachment>> attachments = {"audio": [], "other": []};

    try {
      Directory directory = await getApplicationDocumentsDirectory();

      for (var element in query.media) {
        String filepath = "${directory.path}/${element.filename}";
        File file = File(filepath);
        if (file.existsSync()) {
          attachments[FileController.isAudioFile(element.filename)
                  ? "audio"
                  : "other"]!
              .add(Attachment(filename: element.filename, path: filepath));
        } else {
          attachments[FileController.isAudioFile(element.filename)
                  ? "audio"
                  : "other"]!
              .add(Attachment(
                  filename: element.filename,
                  path: ClijeoConfig.backendBaseUrl +
                      ApiUtils.mediaUrl(element.filename),
                  isLocal: false));
        }
      }
    } on Exception catch (e) {
      log("[QueryThreadController] (_loadAttachments) Exception:${e.toString()}");
      return null;
    }
    return attachments;
  }

  Future<ClijeoCustomer> _getCustomer(String userId) async {
    try {
      final result = await DioBase.dioInstance.get(
        ApiUtils.getUserDetails(userId),
        options: Options(
          headers: {
            'Authorization': 'Bearer ${BackendAuth.getToken()}',
          },
        ),
      );
      return ClijeoCustomer.fromJson(result.data);
    } catch (e) {
      rethrow;
    }
  }

  static String getDatetimeString(String datetime) {
    final dateObj = DateTime.parse(datetime).toLocal();
    return "${DateFormat.yMMMd().format(dateObj)}  ${DateFormat.jm().format(dateObj)}";
  }
}
