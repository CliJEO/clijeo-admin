import 'dart:math';

import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.fieldTitle,
      this.validator,
      this.onSaved,
      this.textInputType = TextInputType.text,
      this.initialValue,
      this.fieldHintText = "",
      this.minLines = 1,
      this.maxLines = 1});

  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextInputType textInputType;
  final String? initialValue;
  final String fieldHintText;
  final String fieldTitle;
  final int minLines;
  final int maxLines;

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
        TextFormField(
          validator: validator,
          onSaved: onSaved,
          initialValue: initialValue ?? "",
          keyboardType: textInputType,
          minLines: minLines,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            hintStyle: AppTextStyle.smallDarkLightBody,
            focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppTheme.primaryColor, width: 1.5)),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppTheme.containerBorder, width: 1.5)),
            hintText: fieldHintText,
          ),
        ),
      ],
    );
  }
}
