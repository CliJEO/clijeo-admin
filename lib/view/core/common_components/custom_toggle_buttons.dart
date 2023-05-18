import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton(
      {super.key,
      required this.isSelected,
      this.onPressed,
      required this.fieldTitle,
      required this.options,
      required this.sizeConfig});

  final List<bool> isSelected;
  final Function(int)? onPressed;
  final String fieldTitle;
  final List<String> options;
  final SizeConfig sizeConfig;

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldTitle,
          style: AppTextStyle.smallDarkLightBoldBody,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: widget.sizeConfig.safeBlockSizeVertical(0.06),
          child: ToggleButtons(
              isSelected: widget.isSelected,
              onPressed: widget.onPressed,
              borderWidth: 1.5,
              borderColor: AppTheme.containerBorder,
              color: AppTheme.textDark,
              selectedBorderColor: AppTheme.primaryColor,
              selectedColor: AppTheme.primaryColor,
              fillColor: AppTheme.selectedColor,
              children: widget.options
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
