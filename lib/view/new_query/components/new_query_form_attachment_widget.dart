import 'package:clijeo_public/controllers/core/file/file_controller.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class NewQueryFormAttachmentWidget extends StatelessWidget {
  const NewQueryFormAttachmentWidget(
      {super.key,
      required this.name,
      required this.filetype,
      required this.openFunction,
      required this.closeFunction});
  final String name;
  final String filetype;
  final Function() openFunction;
  final Function() closeFunction;

  String _preprocessString(String str) {
    if (str.length > 20) {
      return "${str.substring(0, 20)}..";
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
            color: AppTheme.selectedColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: openFunction,
                  child: Row(
                    children: [
                      Icon(FileController.getIconForFiletype(filetype),
                          color: AppTheme.textDark, size: 25),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        _preprocessString(name),
                        style: AppTextStyle.veryMidSmallDarkTitle,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: closeFunction,
                  child: const SizedBox(
                    width: 40,
                    child: Center(
                      child: const Icon(Icons.close,
                          color: AppTheme.textDark, size: 20),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
