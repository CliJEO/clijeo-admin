import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/view/error/network_error_screen.dart';
import 'package:clijeo_public/view/first_login_form/first_login_form_screen.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/error/query_thread_error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/sign_in/sign_in_home_screen.dart';
import 'package:clijeo_public/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static String id = "Wrapper";
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainAppController>(
        builder: (context, mainAppController, _) {
      return mainAppController.state.when(
          initial: () => const SplashScreen(),
          authenticated: () => const HomeScreen(),
          authenticatedFirstLogin: () => const FirstLoginFormScreen(),
          loading: () => const Loading(),
          unauthenticated: (signInError) => SignInHomeScreen(
                signInError: signInError,
              ),
          networkError: () => const NetworkErrorScreen());
    });
  }
}
