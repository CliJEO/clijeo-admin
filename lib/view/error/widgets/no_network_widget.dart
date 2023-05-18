import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoNetworkWidget extends StatelessWidget {
  const NoNetworkWidget(
      {super.key, required this.sizeConfig, required this.errorText});
  final SizeConfig sizeConfig;
  final String errorText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: sizeConfig.safeBlockSizeVertical(0.3),
          width: sizeConfig.safeBlockSizeHorizontal(0.7),
          child: SvgPicture.asset(
            "assets/serverdown.svg",
          ),
        ),
        Text(
          LocaleTextClass.getTextWithKey(context, errorText),
          style: AppTextStyle.smallDarkLightBoldBody,
        )
      ],
    );
  }
}
