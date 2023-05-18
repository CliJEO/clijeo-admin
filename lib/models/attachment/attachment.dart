import 'package:clijeo_public/controllers/core/file/file_controller.dart';

class Attachment {
  String name;
  String path;
  String filetype;
  bool isLocal;
  Attachment(
      {required String filename, required this.path, this.isLocal = true})
      : filetype = FileController.getFileType(filename),
        name = FileController.getAttachmentName(filename);
}
