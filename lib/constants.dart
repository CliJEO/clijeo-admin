class Constants {
  // List of all supported languages
  static List<String> getSupportedLanguages() => ["en", "ml"];

  // List of all genders
  static List<String> getAllGenders() => ["male", "female", "other"];

  // List of all recognized file types
  static List<String> getAllRecognizedFileTypes() =>
      ["image", "video", "audio", "application"];

  // Get unrecognized file type handle
  static String getUnrecognizedFileTypeHandle() => "other";
}
