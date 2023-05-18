class FormValidationController {
  static String? nullStringValidation(String? val) {
    if (val == null || val.isEmpty) {
      return "Please enter a valid non-empty string";
    } else {
      return null;
    }
  }
}
