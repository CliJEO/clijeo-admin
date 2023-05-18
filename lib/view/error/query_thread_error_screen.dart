import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:clijeo_public/view/error/widgets/no_network_widget.dart';
import 'package:flutter/material.dart';

class QueryThreadErrorScreen extends StatelessWidget {
  const QueryThreadErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizeConfig.safeBlockSizeHorizontal(0.06),
                vertical: sizeConfig.safeBlockSizeVertical(0.04)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomBackButton(
                    returnValueOnPop: false,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    LocaleTextClass.getTextWithKey(context, "QueryThread"),
                    style: AppTextStyle.regularDarkTitle,
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: NoNetworkWidget(
                    errorText: "QueryFetchError",
                    sizeConfig: sizeConfig,
                  ),
                ),
              ),
            ])));
  }
}
