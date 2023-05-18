import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_thread_attachment_state.freezed.dart';

@freezed
abstract class QueryThreadAttachmentState with _$QueryThreadAttachmentState {
  const factory QueryThreadAttachmentState.downloaded(
      {required String attachmentPath}) = _QueryThreadAttachmentDownloaded;
  const factory QueryThreadAttachmentState.downloading(
      {required int percentCompleted}) = _QueryThreadAttachmentDownloading;
  const factory QueryThreadAttachmentState.notDownloaded(
      {required String downloadPath,
      String? downloadingError}) = _QueryThreadAttachmentNotDownloaded;
}
