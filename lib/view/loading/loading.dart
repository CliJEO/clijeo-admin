import 'dart:developer';

import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  static String id = "Loading";
  const Loading({super.key, this.percentCompleted});
  final int? percentCompleted;

  @override
  Widget build(BuildContext context) {
    log(percentCompleted?.toString() ?? "");
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Stack(children: [
        if (percentCompleted != null)
          Center(
            child: Text(
              "${percentCompleted.toString()}%",
              style: AppTextStyle.regularAccentTitle,
            ),
          ),
        SpinKitRing(
          color: AppTheme.primaryColor,
          lineWidth: 5,
          size: percentCompleted != null ? 75 : 60,
        ),
      ]),
    );
  }
}
