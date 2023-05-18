import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_query_form_state.freezed.dart';

@freezed
abstract class NewQueryFormState with _$NewQueryFormState {
  const factory NewQueryFormState.stable(
      {String? subject,
      String? body,
      String? voiceAttachmentPath,
      List<Attachment>? otherAttachments,
      String? voiceAttachmentError,
      String? otherAttachmentError,
      String? registerQueryError}) = _NewQueryFormStable;
  const factory NewQueryFormState.loading({required int percentCompleted}) =
      _NewQueryFormLoading;
  const factory NewQueryFormState.completed() = _NewQueryFormCompleted;
}
