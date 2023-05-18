import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class Badges extends StatelessWidget {
  const Badges({super.key, required this.text, required this.color});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
          child: Text(
            text,
            style: AppTextStyle.verySmallLightTitle,
          ),
        ));
  }
}
