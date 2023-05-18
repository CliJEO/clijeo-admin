import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.onTap,
      required this.child,
      required this.sizeConfig});

  final void Function() onTap;
  final Widget child;
  final SizeConfig sizeConfig;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: sizeConfig.safeBlockSizeVertical(0.07),
          decoration: const BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(padding: const EdgeInsets.all(10.0), child: child),
        ));
  }
}
