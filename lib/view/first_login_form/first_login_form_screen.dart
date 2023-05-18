import 'dart:developer';

import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/constants.dart';
import 'package:clijeo_public/controllers/core/language/language_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/first_login_form/first_login_form_controller.dart';
import 'package:clijeo_public/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/core/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/error/query_thread_error_screen.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstLoginFormScreen extends StatelessWidget {
  static String id = "SignUpFormScreen";
  const FirstLoginFormScreen({super.key});

  static final _formKey = GlobalKey<FormState>();

  static final List<String> _allGenderList = Constants.getAllGenders();

  static final List<String> _allLanguageList =
      Constants.getSupportedLanguages();

  String _getUsername(context) {
    var ans = Provider.of<ClijeoUserController>(context, listen: false)
        .state
        .maybeMap(stable: (state) => state.user.name, orElse: () => "");
    return ans;
  }

  Function(int) _genderTogglePressed(FirstLoginFormController controller) {
    return (index) => controller.updateStableStateGender(_allGenderList[index]);
  }

  Function(int) _languageTogglePressed(FirstLoginFormController controller) {
    return (index) =>
        controller.updateStableStateLanguage(_allLanguageList[index]);
  }

  Future<void> _saveProfileDetails(context, FirstLoginFormController controller,
      LanguageController languageController) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await controller.saveProfileDetails(languageController);
      await controller.state.maybeWhen(
          completed: () async {
            await Provider.of<MainAppController>(context, listen: false)
                .firstLoginCompleted(
                    Provider.of<ClijeoUserController>(context, listen: false));
          },
          orElse: () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<FirstLoginFormController>(
      create: (context) => FirstLoginFormController(
          _getUsername(context),
          Provider.of<LanguageController>(context, listen: false)
              .getCurrentLanguageCode()),
      child: Consumer<FirstLoginFormController>(
          builder: (context, controller, child) => controller.state.when(
              loading: () => const Loading(),
              completed: () => const Loading(),
              stable: (name, age, gender, language, phoneNumber, location,
                  saveProfileDetailsError) {
                return Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 60, 30, 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              LocaleTextClass.getTextWithKey(
                                  context, "SignInFormPageTitle"),
                              style: AppTextStyle.largerAccentTitle),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                              LocaleTextClass.getTextWithKey(
                                  context, "SignInFormPara"),
                              style: AppTextStyle.smallDarkLightBoldBody),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            initialValue: name,
                            onSaved: controller.updateStableStateName,
                            fieldTitle:
                                LocaleTextClass.getTextWithKey(context, "Name"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "Name-Hint"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            onSaved: controller.updateStableStateAge,
                            initialValue: age?.toString(),
                            textInputType: TextInputType.number,
                            fieldTitle:
                                LocaleTextClass.getTextWithKey(context, "Age"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "Age-Hint"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomToggleButton(
                              isSelected: _allGenderList
                                  .map((e) => e == gender)
                                  .toList(),
                              onPressed: _genderTogglePressed(controller),
                              fieldTitle: LocaleTextClass.getTextWithKey(
                                  context, "Gender"),
                              sizeConfig: sizeConfig,
                              options: _allGenderList
                                  .map((e) => LocaleTextClass.getTextWithKey(
                                      context, e))
                                  .toList()),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomToggleButton(
                              isSelected: _allLanguageList
                                  .map((e) => e == language)
                                  .toList(),
                              onPressed: _languageTogglePressed(controller),
                              fieldTitle: LocaleTextClass.getTextWithKey(
                                  context, "LanguagePreference"),
                              sizeConfig: sizeConfig,
                              options: _allLanguageList
                                  .map((e) => LocaleTextClass.getTextWithKey(
                                      context, e))
                                  .toList()),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.phoneNumberValidation,
                            onSaved: controller.updateStableStatePhoneNumber,
                            initialValue: phoneNumber,
                            textInputType: TextInputType.phone,
                            fieldTitle: LocaleTextClass.getTextWithKey(
                                context, "PhoneNumber"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "PhoneNumber-Hint"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            onSaved: controller.updateStableStateLocation,
                            textInputType: TextInputType.text,
                            initialValue: location,
                            fieldTitle: LocaleTextClass.getTextWithKey(
                                context, "Location"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "Location-Hint"),
                            minLines: 6,
                            maxLines: 8,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          PrimaryButton(
                              onTap: () => _saveProfileDetails(
                                  context,
                                  controller,
                                  Provider.of<LanguageController>(context,
                                      listen: false)),
                              sizeConfig: sizeConfig,
                              child: Center(
                                child: Text(
                                  LocaleTextClass.getTextWithKey(
                                      context, "SaveProfileDetails"),
                                  style: AppTextStyle.smallLightTitle,
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          if (saveProfileDetailsError != null)
                            CustomErrorWidget(
                                errorText: LocaleTextClass.getTextWithKey(
                                    context, saveProfileDetailsError)),
                        ],
                      ),
                    ),
                  )),
                );
              })),
    );
  }
}
