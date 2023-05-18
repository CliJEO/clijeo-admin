import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/language/language_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/core/common_components/disabled_form_field.dart';
import 'package:clijeo_public/view/core/common_components/disabled_toggle_button.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/error/query_thread_error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsMainScreen extends StatelessWidget {
  static String id = "SettingsMainScreen";
  const SettingsMainScreen({super.key});

  Future<void> _editSettingsPressed(
      context, ClijeoUserController userController, ClijeoUser user) async {
    var shouldRefresh = await Navigator.pushNamed(
        context, SettingsEditScreen.id,
        arguments: user);
    if (shouldRefresh is bool && shouldRefresh) {
      await userController.refreshUser();
    }
  }

  Future<void> _signOutButtonPressed(
      context, ClijeoUserController userController) async {
    await Provider.of<MainAppController>(context, listen: false)
        .signUserOut(userController);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Consumer<ClijeoUserController>(
        builder: (context, userController, _) => userController.state.when(
            noUser: () => QueryThreadErrorScreen(),
            loading: () => const Loading(),
            stable: (user, refreshError) => Scaffold(
                backgroundColor: AppTheme.backgroundColor,
                body: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomBackButton(),
                              Text(
                                LocaleTextClass.getTextWithKey(
                                    context, "Settings"),
                                style: AppTextStyle.regularDarkTitle,
                              )
                            ],
                          ),
                          GestureDetector(
                              onTap: () => _editSettingsPressed(
                                  context, userController, user),
                              child: const SizedBox(
                                width: 40,
                                child: Icon(Icons.edit,
                                    color: AppTheme.textDark, size: 20),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleTextClass.getTextWithKey(
                                    context, "SettingsPara"),
                                style: AppTextStyle.smallDarkLightBoldBody,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "Name"),
                                  fieldValue: user.name),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "Age"),
                                  fieldValue: user.age.toString()),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                fieldTitle: LocaleTextClass.getTextWithKey(
                                    context, "Gender"),
                                fieldValue: user.gender,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                fieldTitle: LocaleTextClass.getTextWithKey(
                                    context, "LanguagePreference"),
                                fieldValue: LocaleTextClass.getTextWithKey(
                                    context,
                                    Provider.of<LanguageController>(context,
                                            listen: false)
                                        .getCurrentLanguageCode()),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "PhoneNumber"),
                                  fieldValue: user.phoneNumber),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "Location"),
                                  fieldValue: user.location),
                              const SizedBox(
                                height: 30,
                              ),
                              PrimaryButton(
                                  onTap: () => _signOutButtonPressed(
                                      context, userController),
                                  sizeConfig: sizeConfig,
                                  child: Center(
                                    child: Text(
                                      LocaleTextClass.getTextWithKey(
                                          context, "SignOut"),
                                      style: AppTextStyle.smallLightTitle,
                                    ),
                                  ))
                            ]),
                      ),
                    ],
                  )),
                ))));
  }
}
