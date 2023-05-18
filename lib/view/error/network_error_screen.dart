import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:clijeo_public/view/error/widgets/no_network_widget.dart';
import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
          child: NoNetworkWidget(
        errorText: "NoNetwork",
        sizeConfig: sizeConfig,
      )),
    );
  }
}
