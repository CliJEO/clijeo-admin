import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_thread_state.freezed.dart';

@freezed
abstract class QueryThreadState with _$QueryThreadState {
  const factory QueryThreadState.initial() = _QueryThreadInitial;
  const factory QueryThreadState.stable(
      {required Query query,
      required List<Attachment> voiceAttachments,
      required List<Attachment> otherAttachments,
      String? attachmentError}) = _QueryThreadStable;
  const factory QueryThreadState.loading() = _QueryThreadLoading;
  const factory QueryThreadState.error() = _QueryThreadError;
}
