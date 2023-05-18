import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_public/view/new_query/components/new_query_form_attachment_widget.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/core/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/error/query_thread_error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/new_query/components/query_recording.dart';
import 'package:clijeo_public/view/core/common_components/query_audio_player.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewQueryFormScreen extends StatelessWidget {
  static String id = "NewQueryFormScreen";
  const NewQueryFormScreen({super.key});

  static final _formKey = GlobalKey<FormState>();

  Future<void> registerQuery(
      context, NewQueryFormController newQueryFormController) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await newQueryFormController.registerQuery();
      newQueryFormController.state.maybeWhen(
          completed: () => Navigator.pop(context, true), orElse: () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<NewQueryFormController>(
        create: (context) => NewQueryFormController(),
        child: Consumer<NewQueryFormController>(
            builder: (context, newQueryFormController, _) {
          return newQueryFormController.state.when(
              loading: (percentCompleted) => Loading(
                    percentCompleted: percentCompleted,
                  ),
              completed: () => const Loading(
                    percentCompleted: 100,
                  ),
              stable: (subject,
                      body,
                      voiceAttachmentPath,
                      otherAttachments,
                      voiceAttachmentError,
                      otherAttachmentError,
                      registerQueryError) =>
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
                                          context, "NewQuery"),
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
                                            onSaved: newQueryFormController
                                                .updateStableStateSubject,
                                            initialValue: subject,
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Subject"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Subject-Hint"),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          CustomFormField(
                                            onSaved: newQueryFormController
                                                .updateStableStateBody,
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            initialValue: body,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Body"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Body-Hint"),
                                            minLines: 15,
                                            maxLines: 100,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            LocaleTextClass.getTextWithKey(
                                                context, "VoiceAttachment"),
                                            style: AppTextStyle
                                                .smallDarkLightBoldBody,
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          if (voiceAttachmentError != null)
                                            CustomErrorWidget(
                                                showErrorHeading: false,
                                                errorText: LocaleTextClass
                                                    .getTextWithKey(context,
                                                        voiceAttachmentError)),
                                          if (voiceAttachmentError == null &&
                                              voiceAttachmentPath == null)
                                            QueryRecording(
                                              formController:
                                                  newQueryFormController,
                                            ),
                                          if (voiceAttachmentError == null &&
                                              voiceAttachmentPath != null)
                                            QueryAudioPlayer(
                                              voiceAttachmentPath:
                                                  voiceAttachmentPath,
                                              closeFunction: () =>
                                                  newQueryFormController
                                                      .updateStableStateVoiceAttachmentPath(
                                                          null),
                                            ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                LocaleTextClass.getTextWithKey(
                                                    context,
                                                    "OtherAttachments"),
                                                style: AppTextStyle
                                                    .smallDarkLightBoldBody,
                                              ),
                                              if (otherAttachmentError == null)
                                                GestureDetector(
                                                  onTap: newQueryFormController
                                                      .addFilesToOtherAttachments,
                                                  child: const Icon(Icons.add,
                                                      color: AppTheme
                                                          .textDarkLight,
                                                      size: 20),
                                                )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          if (otherAttachmentError != null)
                                            CustomErrorWidget(
                                                showErrorHeading: false,
                                                errorText: LocaleTextClass
                                                    .getTextWithKey(context,
                                                        otherAttachmentError)),
                                          if (otherAttachmentError == null &&
                                              otherAttachments != null &&
                                              otherAttachments.isNotEmpty)
                                            ListView.builder(
                                                padding: EdgeInsets.zero,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount:
                                                    otherAttachments.length,
                                                itemBuilder: (context, index) =>
                                                    NewQueryFormAttachmentWidget(
                                                      openFunction: () =>
                                                          newQueryFormController
                                                              .openFileFromOtherAttachments(
                                                                  index),
                                                      closeFunction: () =>
                                                          newQueryFormController
                                                              .removeFileFromOtherAttachments(
                                                                  index),
                                                      name: otherAttachments[
                                                              index]
                                                          .name,
                                                      filetype:
                                                          otherAttachments[
                                                                  index]
                                                              .filetype,
                                                    )),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          PrimaryButton(
                                              onTap: () async {
                                                registerQuery(context,
                                                    newQueryFormController);
                                              },
                                              sizeConfig: sizeConfig,
                                              child: Center(
                                                child: Text(
                                                  LocaleTextClass.getTextWithKey(
                                                      context,
                                                      "RegisterQueryButton"),
                                                  style: AppTextStyle
                                                      .smallLightTitle,
                                                ),
                                              )),
                                          if (registerQueryError != null)
                                            Column(
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                CustomErrorWidget(
                                                    errorText: LocaleTextClass
                                                        .getTextWithKey(context,
                                                            registerQueryError)),
                                              ],
                                            ),
                                        ],
                                      ),
                                    ))
                              ]),
                        ),
                      )));
        }));
  }
}
