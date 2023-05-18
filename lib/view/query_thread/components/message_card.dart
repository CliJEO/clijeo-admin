import 'package:clijeo_admin/models/attachment/attachment.dart';
import 'package:clijeo_admin/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_admin/models/customer/clijeo_customer.dart';
import 'package:clijeo_admin/models/query/media/query_media.dart';
import 'package:clijeo_admin/view/core/common_components/query_audio_player.dart';
import 'package:clijeo_admin/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_admin/view/query_thread/components/query_thread_other_attachment_widget.dart';
import 'package:clijeo_admin/view/core/theme/app_color.dart';
import 'package:clijeo_admin/view/core/theme/app_text_style.dart';
import 'package:clijeo_admin/view/core/theme/size_config.dart';
import 'package:clijeo_admin/view/query_thread/components/query_thread_voice_attachment_widget.dart';
import 'package:clijeo_admin/view/query_thread/customer_details.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard(
      {super.key,
      required this.user,
      required this.body,
      required this.date,
      required this.isArchived,
      required this.sizeConfig,
      this.customer,
      this.attachmentError,
      this.voiceAttachments,
      this.otherAttachments});
  final SizeConfig sizeConfig;
  final String user;
  final bool isArchived;
  final String body;
  final String date;
  final ClijeoCustomer? customer;
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
          border: user == "Admin"
              ? Border(
                  right: BorderSide(
                      width: 5.0,
                      color: isArchived
                          ? AppTheme.disabledColor
                          : AppTheme.primaryColor),
                )
              : Border(
                  left: BorderSide(
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
                  user == "Admin"
                      ? LocaleTextClass.getTextWithKey(context, user)
                      : user,
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
            if (customer != null)
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, CustomerDetailsScreen.id,
                        arguments: customer),
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.person,
                                    color: AppTheme.textLight, size: 25),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  LocaleTextClass.getTextWithKey(
                                      context, "UserDetails"),
                                  style: AppTextStyle.veryMidSmallLightTitle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
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
