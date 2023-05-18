import 'dart:developer';

import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/models/user_dto/clijeo_user_dto.dart';
import 'package:clijeo_public/constants.dart';
import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/language/language_controller.dart';
import 'package:clijeo_public/controllers/first_login_form/first_login_form_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FirstLoginFormController extends ChangeNotifier {
  FirstLoginFormState state;

  FirstLoginFormController(String name, String languageCode)
      : state = FirstLoginFormState.stable(
            name: name,
            gender: Constants.getAllGenders().first,
            language: languageCode);

  void updateStableStateName(String? updatedName) {
    if (updatedName != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(name: updatedName),
          orElse: () => state);
    }
  }

  void updateStableStateGender(String? updatedGender) {
    if (updatedGender != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(gender: updatedGender),
          orElse: () => state);

      // Since this field correspond to UI that needs to change
      notifyListeners();
    }
  }

  void updateStableStateLanguage(String? updatedLanguage) {
    if (updatedLanguage != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(language: updatedLanguage),
          orElse: () => state);

      // Since this field corresponds to UI that needs to change
      notifyListeners();
    }
  }

  void updateStableStateAge(String? updatedAge) {
    if (updatedAge != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(age: int.tryParse(updatedAge)),
          orElse: () => state);
    }
  }

  void updateStableStatePhoneNumber(String? updatedPhoneNumber) {
    if (updatedPhoneNumber != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(phoneNumber: updatedPhoneNumber),
          orElse: () => state);
    }
  }

  void updateStableStateLocation(String? updatedLocation) {
    if (updatedLocation != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(location: updatedLocation),
          orElse: () => state);
    }
  }

  Future<void> saveProfileDetails(LanguageController languageController) async {
    state = await state.maybeMap(
        stable: (oldState) async {
          final user = ClijeoUserDto(
            name: oldState.name,
            age: oldState.age,
            gender: oldState.gender,
            phoneNumber: oldState.phoneNumber,
            location: oldState.location,
          );

          // Setting the state to loading as processing continues
          state = const FirstLoginFormState.loading();
          notifyListeners();

          try {
            await DioBase.dioInstance.put(ApiUtils.userProfileUpdateUrl,
                options: Options(
                  headers: {
                    'Authorization': 'Bearer ${BackendAuth.getToken()}',
                  },
                ),
                data: user.toJson());

            // Updating the shared pref and static variable for language
            await languageController
                .setCurrentLanguageCodeAndUpdateSharedPref(oldState.language);

            return const FirstLoginFormState.completed();
          } on DioError catch (e) {
            log("[FirstLoginFormController] (saveProfileDetails) DioError:${e.message}");
            return oldState.copyWith(
                saveProfileDetailsError:
                    ErrorController.saveProfileDetailsError);
          }
        },
        orElse: () => state);
    notifyListeners();
  }
}
