import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.returnValueOnPop});
  final bool? returnValueOnPop;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (returnValueOnPop == null) {
          Navigator.pop(context);
        } else {
          Navigator.pop(context, returnValueOnPop);
        }
      },
      child: Container(
          width: 40,
          child:
              const Icon(Icons.arrow_back, color: AppTheme.textDark, size: 20)),
    );
  }
}
