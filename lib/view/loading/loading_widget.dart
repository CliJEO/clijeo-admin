import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SpinKitRing(
      color: AppTheme.primaryColor,
      lineWidth: 5,
      size: 20,
    );
  }
}
