import 'package:clijeo_public/controllers/core/file/file_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_attachment/query_thread_attachment_controller.dart';
import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:clijeo_public/view/core/common_components/query_audio_player.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class QueryThreadVoiceAttachmentWidget extends StatelessWidget {
  const QueryThreadVoiceAttachmentWidget({super.key, required this.attachment});
  final Attachment attachment;

  String _preprocessString(String str) {
    if (str.length > 20) {
      return "${str.substring(0, 20)}..";
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QueryThreadAttachmentController>(
      create: (context) =>
          QueryThreadAttachmentController(attachment: attachment),
      child: Consumer<QueryThreadAttachmentController>(
          builder: (context, queryThreadAttachmentController, _) =>
              queryThreadAttachmentController.state.maybeWhen(
                  downloaded: (attachmentPath) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: QueryAudioPlayer(
                            voiceAttachmentPath: attachmentPath),
                      ),
                  orElse: () => GestureDetector(
                        onTap: queryThreadAttachmentController.state.maybeMap(
                            notDownloaded: (_) =>
                                queryThreadAttachmentController.download,
                            orElse: () => null),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: queryThreadAttachmentController.state
                                    .maybeMap(
                                        downloading: (_) =>
                                            AppTheme.lighterPrimaryColor,
                                        orElse: () => AppTheme.primaryColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      queryThreadAttachmentController.state
                                          .maybeMap(
                                        downloading: (_) => const SpinKitRing(
                                          color: AppTheme.textLight,
                                          lineWidth: 3,
                                          size: 20,
                                        ),
                                        orElse: () => const Icon(Icons.download,
                                            color: AppTheme.textLight,
                                            size: 20),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        _preprocessString(attachment.name),
                                        style:
                                            AppTextStyle.veryMidSmallLightTitle,
                                      ),
                                    ],
                                  ),
                                  queryThreadAttachmentController.state
                                      .maybeMap(
                                          notDownloaded: (value) {
                                            if (value.downloadingError !=
                                                null) {
                                              return Text(
                                                LocaleTextClass.getTextWithKey(
                                                    context,
                                                    value.downloadingError!),
                                                style: AppTextStyle
                                                    .verySmallLightTitle,
                                              );
                                            } else {
                                              return Container();
                                            }
                                          },
                                          downloading: (value) => Text(
                                                "${value.percentCompleted}%",
                                                style: AppTextStyle
                                                    .verySmallLightTitle,
                                              ),
                                          orElse: () => Container()),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))),
    );
  }
}
