import 'package:clijeo_admin/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_admin/controllers/core/language/language_controller.dart';
import 'package:clijeo_admin/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_admin/controllers/edit_settings_form/edit_settings_form_controller.dart';
import 'package:clijeo_admin/models/user/clijeo_user.dart';
import 'package:clijeo_admin/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_admin/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_admin/view/core/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_admin/view/core/common_components/primary_button.dart';
import 'package:clijeo_admin/constants.dart';
import 'package:clijeo_admin/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_admin/view/error/query_thread_error_screen.dart';
import 'package:clijeo_admin/view/loading/loading.dart';
import 'package:clijeo_admin/view/core/theme/app_color.dart';
import 'package:clijeo_admin/view/core/theme/app_text_style.dart';
import 'package:clijeo_admin/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsEditScreen extends StatelessWidget {
  static String id = "SettingsEditScreen";
  static final _formKey = GlobalKey<FormState>();
  const SettingsEditScreen({super.key});

  static final List<String> _allGenderList = Constants.getAllGenders();
  static final List<String> _allLanguageList =
      Constants.getSupportedLanguages();

  Function(int) _languageTogglePressed(EditSettingsFormController controller) {
    return (index) =>
        controller.updateStableStateLanguage(_allLanguageList[index]);
  }

  Future<void> _saveProfileDetails(
      context,
      EditSettingsFormController controller,
      LanguageController languageController) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await controller.saveProfileDetails(languageController);
      controller.state.maybeWhen(
          completed: () => Navigator.of(context).pop(true), orElse: () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    final user = ModalRoute.of(context)!.settings.arguments as ClijeoUser;
    return ChangeNotifierProvider<EditSettingsFormController>(
      create: (context) => EditSettingsFormController(
          name: user.name,
          language: Provider.of<LanguageController>(context, listen: false)
              .getCurrentLanguageCode()),
      child: Consumer<EditSettingsFormController>(
          builder: (context, settingsFormController, _) =>
              settingsFormController.state.when(
                  loading: () => Loading(),
                  completed: () => const Loading(),
                  stable: ((name, language, saveProfileDetailsError) =>
                      Scaffold(
                        backgroundColor: AppTheme.backgroundColor,
                        body: SingleChildScrollView(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const CustomBackButton(
                                      returnValueOnPop: false,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      LocaleTextClass.getTextWithKey(
                                          context, "Settings-Edit"),
                                      style: AppTextStyle.regularDarkTitle,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomFormField(
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            initialValue: name,
                                            onSaved: settingsFormController
                                                .updateStableStateName,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Name"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Name-Hint"),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          CustomToggleButton(
                                              isSelected: _allLanguageList
                                                  .map((e) => e == language)
                                                  .toList(),
                                              onPressed: _languageTogglePressed(
                                                  settingsFormController),
                                              fieldTitle: LocaleTextClass
                                                  .getTextWithKey(context,
                                                      "LanguagePreference"),
                                              sizeConfig: sizeConfig,
                                              options: _allLanguageList
                                                  .map((e) => LocaleTextClass
                                                      .getTextWithKey(
                                                          context, e))
                                                  .toList()),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          PrimaryButton(
                                              onTap: () => _saveProfileDetails(
                                                  context,
                                                  settingsFormController,
                                                  Provider.of<
                                                          LanguageController>(
                                                      context,
                                                      listen: false)),
                                              sizeConfig: sizeConfig,
                                              child: Center(
                                                child: Text(
                                                  LocaleTextClass
                                                      .getTextWithKey(context,
                                                          "SaveProfileDetails"),
                                                  style: AppTextStyle
                                                      .smallLightTitle,
                                                ),
                                              ))
                                        ],
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                if (saveProfileDetailsError != null)
                                  CustomErrorWidget(
                                      errorText: LocaleTextClass.getTextWithKey(
                                          context, saveProfileDetailsError)),
                              ]),
                        )),
                      )))),
    );
  }
}
