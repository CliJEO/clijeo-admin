import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';

class BackendAuth {
  static String _userToken = "";

  static String getToken() => _userToken;
  static void setToken(String token) {
    _userToken = token;
  }

  static Future<void> clearToken() async {
    _userToken = "";
    await ClijeoSharedPref.clearUserAccessTokenToSharedPref();
  }

  static Future<void> setTokenAndUpdateSharedPref(String token) async {
    _userToken = token;
    ClijeoSharedPref.addUserAccessTokenToSharedPref(token);
  }
}
