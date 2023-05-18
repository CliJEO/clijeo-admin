import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_login_form_state.freezed.dart';

@freezed
abstract class FirstLoginFormState with _$FirstLoginFormState {
  const factory FirstLoginFormState.stable(
      {required String name,
      int? age,
      required String gender,
      required String language,
      String? phoneNumber,
      String? location,
      String? saveProfileDetailsError}) = _FirstLoginFormStable;
  const factory FirstLoginFormState.loading() = _FirstLoginFormLoading;
  const factory FirstLoginFormState.completed() = _FirstLoginFormCompleted;
}
