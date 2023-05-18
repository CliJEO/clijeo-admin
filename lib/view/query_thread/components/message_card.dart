import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/models/query/media/query_media.dart';
import 'package:clijeo_public/view/core/common_components/query_audio_player.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_public/view/query_thread/components/query_thread_other_attachment_widget.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:clijeo_public/view/query_thread/components/query_thread_voice_attachment_widget.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard(
      {super.key,
      required this.user,
      required this.body,
      required this.date,
      required this.isArchived,
      required this.sizeConfig,
      this.attachmentError,
      this.voiceAttachments,
      this.otherAttachments});
  final SizeConfig sizeConfig;
  final String user;
  final bool isArchived;
  final String body;
  final String date;
  final String? attachmentError;
  final List<Attachment>? otherAttachments;
  final List<Attachment>? voiceAttachments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          // borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: user == "You"
              ? Border(
                  left: BorderSide(
                      width: 5.0,
                      color: isArchived
                          ? AppTheme.disabledColor
                          : AppTheme.primaryColor),
                )
              : Border(
                  right: BorderSide(
                      width: 5.0,
                      color: isArchived
                          ? AppTheme.disabledColor
                          : AppTheme.primaryColor),
                ),
          boxShadow: const [
            BoxShadow(
                color: Color(0x33000000), blurRadius: 4.0, offset: Offset(0, 2))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleTextClass.getTextWithKey(context, user),
                  style: isArchived
                      ? AppTextStyle.smallDarkLightTitle
                      : AppTextStyle.smallAccentTitle,
                ),
                Text(
                  date,
                  style: AppTextStyle.smallDarkLightBoldBody,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              body,
              style: AppTextStyle.smallDarkLightBody,
            ),
            const SizedBox(
              height: 20,
            ),
            if (attachmentError != null)
              CustomErrorWidget(
                  showErrorHeading: false,
                  errorText: LocaleTextClass.getTextWithKey(
                      context, attachmentError!)),
            if (attachmentError == null)
              Column(
                children: [
                  if (!isArchived &&
                      voiceAttachments != null &&
                      voiceAttachments!.isNotEmpty)
                    ListView.builder(
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: voiceAttachments!.length,
                        itemBuilder: (context, index) =>
                            QueryThreadVoiceAttachmentWidget(
                                attachment: voiceAttachments![index])),
                  if (!isArchived &&
                      otherAttachments != null &&
                      otherAttachments!.isNotEmpty)
                    ListView.builder(
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: otherAttachments!.length,
                        itemBuilder: (context, index) =>
                            QueryThreadOtherAttachmentWidget(
                              attachment: otherAttachments![index],
                            )),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}
