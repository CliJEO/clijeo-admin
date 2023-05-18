import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  static String id = "Loading";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: Center(
          child: SizedBox(
            width: sizeConfig.safeBlockSizeHorizontal(0.7),
            child: Image.asset(
              "assets/clijeo.jpeg",
            ),
          ),
        ));
  }
}
