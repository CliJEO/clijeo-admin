import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_controller.dart';
import 'package:clijeo_public/controllers/thread_respond_from/thread_respond_form_controller.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_public/view/error/query_thread_error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThreadRespondScreen extends StatelessWidget {
  static String id = "ThreadRespondScreen";
  const ThreadRespondScreen({super.key});

  static final _formKey = GlobalKey<FormState>();

  Future<void> _replyInThread(context, int queryId,
      ThreadRespondFormController threadRespondFormController) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await threadRespondFormController.replyInThread(queryId);
      threadRespondFormController.state.maybeWhen(
          completed: () => Navigator.pop(context, true), orElse: () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    final queryId = ModalRoute.of(context)!.settings.arguments as int;
    return ChangeNotifierProvider<ThreadRespondFormController>(
      create: (context) => ThreadRespondFormController(),
      child: Consumer<ThreadRespondFormController>(
          builder: (context, threadRespondFormController, _) {
        return threadRespondFormController.state.when(
            loading: () => const Loading(),
            completed: () => const Loading(),
            stable: (body, replyError) => Scaffold(
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
                                    context, "ReplyInThreadTitle"),
                                style: AppTextStyle.regularDarkTitle,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomFormField(
                                      validator: FormValidationController
                                          .nullStringValidation,
                                      onSaved: threadRespondFormController
                                          .updateStableStateBody,
                                      initialValue: body,
                                      fieldTitle:
                                          LocaleTextClass.getTextWithKey(
                                              context, "Body"),
                                      fieldHintText:
                                          LocaleTextClass.getTextWithKey(
                                              context, "Reply-Hint"),
                                      minLines: 15,
                                      maxLines: 100,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    PrimaryButton(
                                        onTap: () => _replyInThread(
                                            context,
                                            queryId,
                                            threadRespondFormController),
                                        sizeConfig: sizeConfig,
                                        child: Center(
                                          child: Text(
                                            LocaleTextClass.getTextWithKey(
                                                context, "SendMessage"),
                                            style: AppTextStyle.smallLightTitle,
                                          ),
                                        )),
                                    if (replyError != null)
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          CustomErrorWidget(
                                              errorText: LocaleTextClass
                                                  .getTextWithKey(
                                                      context, replyError)),
                                        ],
                                      ),
                                  ],
                                ),
                              )),
                        ]),
                  )),
                ));
      }),
    );
  }
}
