import 'package:clijeo_public/controllers/core/language/app_localization.dart';
import 'package:flutter/material.dart';

class LocaleTextClass {
  static String getTextWithKey(BuildContext context, String key) {
    return AppLocalizations.of(context)?.translate(key) ?? "Unrecognized Text";
  }
}
