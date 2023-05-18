class ErrorController {
  static String signInError = "SignInError";
  static String signOutError = "SignOutError";
  static String refreshUserError = "RefreshUserError";
  static String saveProfileDetailsError = "SaveProfileDetailsError";
  static String recordingError = "RecordingError";
  static String recordingPermission = "RecordingPermission";
  static String registerQueryError = "RegisterQueryError";
  static String fileAttachmentPermission = "FileAttachmentPermission";
  static String replyInThreadError = "ReplyInThreadError";
  static String loadingAttachmentError = "LoadingAttachmentError";
  static String downloadAttachmentError = "DownloadAttachmentError";
  static String registerQueryErrorExcessFile = "RegisterQueryErrorExcessFile";
  static String registerQueryErrorLargeFile = "RegisterQueryErrorLargeFile";
  static String registerQueryErrorTitleOrContent =
      "RegisterQueryErrorTitleOrContent";

  static String mapServerRegisterQueryError(String? serverError) {
    if (serverError == "Unexpected field") {
      return registerQueryErrorExcessFile;
    } else if (serverError == "File too large") {
      return registerQueryErrorLargeFile;
    } else if (serverError == "Title or content not within limits.") {
      return registerQueryErrorTitleOrContent;
    } else {
      return registerQueryError;
    }
  }
}
