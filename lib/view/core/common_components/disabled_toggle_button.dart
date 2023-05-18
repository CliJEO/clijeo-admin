import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';

class DisabledToggleButton extends StatelessWidget {
  const DisabledToggleButton(
      {super.key,
      required this.fieldTitle,
      required this.options,
      required this.sizeConfig});
  final String fieldTitle;
  final List<String> options;
  final SizeConfig sizeConfig;

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
        SizedBox(
          height: sizeConfig.safeBlockSizeVertical(0.06),
          width: double.infinity,
          child: ToggleButtons(
              isSelected: options.map((e) => true).toList(),
              borderWidth: 1.5,
              borderColor: AppTheme.containerBorder,
              color: AppTheme.textDark,
              selectedBorderColor: AppTheme.primaryColor,
              selectedColor: AppTheme.primaryColor,
              fillColor: AppTheme.selectedColor,
              children: options
                  .map((value) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value,
                          style: AppTextStyle.toggleButtonText,
                        ),
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
