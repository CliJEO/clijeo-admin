import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/controllers/new_query/recording/recording_controller.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QueryRecording extends StatelessWidget {
  const QueryRecording({super.key, required this.formController});
  final NewQueryFormController formController;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecordingController>(
      create: (context) => RecordingController(),
      child: Consumer<RecordingController>(builder: (context, controller, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTapDown: (_) => controller.startRecording(formController),
              onTapUp: (_) => controller.stopRecording(formController),
              child: Container(
                decoration: BoxDecoration(
                    color: controller.state.maybeMap(
                        recording: (_) => AppTheme.primaryColor,
                        orElse: () => AppTheme.selectedColor),
                    shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(controller.state
                      .maybeMap(recording: (_) => 12.0, orElse: () => 8.0)),
                  child: Icon(Icons.mic,
                      color: controller.state.maybeMap(
                          recording: (_) => AppTheme.textLight,
                          orElse: () => AppTheme.textDark),
                      size: 20),
                ),
              ),
            ),
            Text(
                controller.state.map(
                    notRecording: (_) => LocaleTextClass.getTextWithKey(
                        context, "RecordingInstructions"),
                    recording: (_) =>
                        LocaleTextClass.getTextWithKey(context, "Recording"),
                    recordingCompleted: (_) => LocaleTextClass.getTextWithKey(
                        context, "RecordingCompleted")),
                style: AppTextStyle.midSmallDarkLightTitle),
            Container(
              decoration: BoxDecoration(
                  color: controller.state.maybeMap(
                      recording: (_) => AppTheme.primaryColor,
                      orElse: () => AppTheme.selectedColor),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.state.maybeMap(
                      recording: (state) =>
                          '${(Duration(seconds: state.duration))}'
                              .split('.')[0]
                              .substring(2),
                      orElse: () => "00:00"),
                  style: controller.state.maybeMap(
                      recording: (_) => AppTextStyle.verySmallLightTitle,
                      orElse: () => AppTextStyle.verySmallDarkTitle),
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
