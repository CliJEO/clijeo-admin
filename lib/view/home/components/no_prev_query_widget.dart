import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoPrevQueryWidget extends StatelessWidget {
  const NoPrevQueryWidget({super.key, required this.sizeConfig});
  final SizeConfig sizeConfig;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: sizeConfig.safeBlockSizeVertical(0.3),
          width: sizeConfig.safeBlockSizeHorizontal(0.7),
          child: SvgPicture.asset(
            "assets/no_query.svg",
          ),
        ),
        Text(
          LocaleTextClass.getTextWithKey(context, "NoPostedQuery"),
          style: AppTextStyle.smallDarkLightBoldBody,
        )
      ],
    );
  }
}
