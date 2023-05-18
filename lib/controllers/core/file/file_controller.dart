import 'dart:io';

import 'package:clijeo_public/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mime_type/mime_type.dart';

class FileController {
  static String getAttachmentName(String filename) {
    String filetype = getFileType(filename);
    return "$filetype attachment";
  }

  static String getFileType(String filename) {
    String? mimeType = mime(filename)?.split('/').first;
    if (mimeType != null &&
        Constants.getAllRecognizedFileTypes().contains(mimeType)) {
      return mimeType;
    }

    return Constants.getUnrecognizedFileTypeHandle();
  }

  static bool isAudioFile(String filename) {
    String? mimeType = mime(filename)?.split('/').first;
    if (mimeType == "audio") return true;
    return false;
  }

  static IconData getIconForFiletype(String filetype) {
    switch (filetype) {
      case "audio":
        return Icons.audio_file;
      case "image":
        return Icons.image;
      case "video":
        return Icons.video_file;
      case "application":
        return Icons.description;
      default:
        return Icons.text_snippet;
    }
  }
}
