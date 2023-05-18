import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/constants.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:flutter/material.dart';

class LanguageController extends ChangeNotifier {
  // Currently selected language
  String _currentLanguageCode = Constants.getSupportedLanguages().first;

  LanguageController() {
    String languageCode = _stripCountryCode(Platform.localeName);
    if (Constants.getSupportedLanguages().contains(languageCode)) {
      _currentLanguageCode = languageCode;
    }
  }

  String _stripCountryCode(String languageCode) {
    return languageCode.split("_").first;
  }

  void setCurrentLanguageCode(String languageCode) {
    languageCode = _stripCountryCode(languageCode);
    if (Constants.getSupportedLanguages().contains(languageCode)) {
      _currentLanguageCode = languageCode;
      notifyListeners();
    }
  }

  Future<void> setCurrentLanguageCodeAndUpdateSharedPref(
      String languageCode) async {
    languageCode = _stripCountryCode(languageCode);
    if (Constants.getSupportedLanguages().contains(languageCode)) {
      _currentLanguageCode = languageCode;
      await ClijeoSharedPref.addLanguageToSharedPref(languageCode);
      notifyListeners();
    }
  }

  String getCurrentLanguageCode() {
    return _currentLanguageCode;
  }
}
