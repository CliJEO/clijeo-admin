import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key, this.showErrorHeading = true, required this.errorText});
  final String errorText;
  final bool showErrorHeading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppTheme.errorColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showErrorHeading)
              Text(
                LocaleTextClass.getTextWithKey(context, "Error"),
                style: AppTextStyle.smallLightTitle,
              ),
            if (showErrorHeading)
              const SizedBox(
                height: 10,
              ),
            Text(
              errorText,
              style: AppTextStyle.midSmallLightTitle,
            ),
          ],
        ),
      ),
    );
  }
}
