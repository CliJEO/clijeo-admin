import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/constants.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/language/app_localization.dart';
import 'package:clijeo_public/controllers/core/language/language_controller.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/query_thread/query_thread.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/first_login_form/first_login_form_screen.dart';
import 'package:clijeo_public/view/sign_in/sign_in_home_screen.dart';
import 'package:clijeo_public/view/core/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  DioBase.initDio();
  final appController = MainAppController();
  final userController = ClijeoUserController();
  final languageController = LanguageController();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MainAppController>(
        create: (context) => appController),
    ChangeNotifierProvider<ClijeoUserController>(
        create: (context) => userController),
    ChangeNotifierProvider<LanguageController>(
      create: (context) => languageController,
    )
  ], child: const MainApp()));

  // Initialize App properties
  await appController.initializeApp(userController, languageController);
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(
        builder: (context, languageController, _) {
      return MaterialApp(
          title: 'CLIJEO-PUBLIC',
          locale: Locale(languageController.getCurrentLanguageCode()),
          supportedLocales:
              Constants.getSupportedLanguages().map((e) => Locale(e)).toList(),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          initialRoute: Wrapper.id,
          routes: {
            HomeScreen.id: (context) => const HomeScreen(),
            NewQueryFormScreen.id: (context) => const NewQueryFormScreen(),
            QueryThread.id: (context) => const QueryThread(),
            ThreadRespondScreen.id: (context) => const ThreadRespondScreen(),
            SettingsMainScreen.id: (context) => const SettingsMainScreen(),
            SettingsEditScreen.id: (context) => const SettingsEditScreen(),
            SignInHomeScreen.id: (context) => const SignInHomeScreen(),
            FirstLoginFormScreen.id: (context) => const FirstLoginFormScreen(),
            Wrapper.id: (context) => const Wrapper(),
          });
    });
  }
}
