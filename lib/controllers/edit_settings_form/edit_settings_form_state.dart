import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_settings_form_state.freezed.dart';

@freezed
abstract class EditSettingsFormState with _$EditSettingsFormState {
  const factory EditSettingsFormState.stable(
      {required String name,
      required String language,
      String? saveProfileDetailsError}) = _EditSettingsFormStable;
  const factory EditSettingsFormState.loading() = _EditSettingsFormLoading;
  const factory EditSettingsFormState.completed() = _EditSettingsFormCompleted;
}
