import 'dart:developer';
import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/auth/google_auth.dart';
import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/language/language_controller.dart';
import 'package:clijeo_public/controllers/core/error/error_controller.dart';
import 'package:clijeo_public/controllers/main_app/main_app_state.dart';
import 'package:clijeo_public/controllers/core/notification/notification_controller.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/models/sign_in_response/sign_in_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainAppController extends ChangeNotifier {
  MainAppState state = const MainAppState.initial();

  Future<void> initializeApp(ClijeoUserController userController,
      LanguageController languageController) async {
    // loading shared preferences for language and backend auth token
    await ClijeoSharedPref.loadSharedPrefToApp(languageController);

    if (BackendAuth.getToken().isNotEmpty) {
      // Setup notification specifics for the app
      await ClijeoNotificationController.setupNotifications();

      // Load the user
      await userController.refreshUser();

      // Set authentication status based on user state
      userController.state.maybeWhen(
          stable: (user, _) {
            if (ClijeoUserController.isFirstLoggedInUser(user)) {
              state = const MainAppState.authenticatedFirstLogin();
            } else {
              state = const MainAppState.authenticated();
            }
          },
          orElse: () => state = const MainAppState.networkError());
    } else {
      state = const MainAppState.unauthenticated();
    }
    notifyListeners();
  }

  Future<void> signIn(ClijeoUserController userController) async {
    try {
      final idToken = await GoogleAuth.signInWithGoogle();

      // Returning if access token is null
      if (idToken == null) throw Exception("NULL access token");

      state = const MainAppState.loading();
      notifyListeners();

      // Authenticating with the backend server
      final result = await DioBase.dioInstance
          .post(ApiUtils.loginUrl, data: {"idToken": idToken});

      // disconnecting from google sign in controller
      await GoogleAuth.disconnectGoogleSignInControllerConnection();

      final signInResponse = SignInResponse.fromJson(result.data);

      // Setting the BackendAuth static variable to the jwt token
      await BackendAuth.setTokenAndUpdateSharedPref(signInResponse.jwt);

      // updating the user controller state
      await userController.refreshUser();

      userController.state.maybeWhen(
          stable: (user, _) {
            // Setting the state based on first login
            state = signInResponse.firstLogin
                ? const MainAppState.authenticatedFirstLogin()
                : const MainAppState.authenticated();
          },
          orElse: () => state);
    } on DioError catch (e) {
      // triggered when it is unable to communicate with the backend
      log("[MainAppController] (signIn) DioError: ${e.message}");

      // cleanup: disconnecting from google sign in controller
      await GoogleAuth.disconnectGoogleSignInControllerConnection();

      state = MainAppState.unauthenticated(
          signInError: ErrorController.signInError);
    } on PlatformException catch (e) {
      if (e.code == GoogleSignIn.kNetworkError) {
        // triggered when there is no network
        log("[MainAppController] (signIn) Network Error");
        state = const MainAppState.networkError();
      }
    } on Exception catch (e) {
      // triggered when the signInWithGoogle is cancelled
      // no state update
      log("[MainAppController] (signIn) Exception: ${e.toString()}");
    } on Error catch (e) {
      // triggered when the response from backend does not match models
      log("[MainAppController] (signIn) Models mismatch: ${e.toString()}");
      state = MainAppState.unauthenticated(
          signInError: ErrorController.signInError);
    }
    notifyListeners();
  }

  Future<void> firstLoginCompleted(ClijeoUserController userController) async {
    // user controller state refreshed
    await userController.refreshUser();

    // updating the state
    state = const MainAppState.authenticated();
    notifyListeners();
  }

  Future<void> signUserOut(ClijeoUserController userController) async {
    // clear user controller state
    userController.clearUserState();

    // clear backend token from memory and remove shared pref
    await BackendAuth.clearToken();

    // updating the state
    state = const MainAppState.unauthenticated();
    notifyListeners();
  }
}
