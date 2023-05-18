import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class DisabledFormField extends StatelessWidget {
  const DisabledFormField(
      {super.key,
      required this.fieldTitle,
      required this.fieldValue,
      this.isLargeField = false});
  final String fieldTitle;
  final String? fieldValue;
  final bool isLargeField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: AppTextStyle.smallDarkLightBoldBody,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: isLargeField ? 130 : 45,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppTheme.selectedColor,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              fieldValue ??
                  LocaleTextClass.getTextWithKey(context, "Unspecified"),
              style: AppTextStyle.smallDarkText,
            ),
          ),
        ),
      ],
    );
  }
}
