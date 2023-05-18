class FormValidationController {
  static String? nullStringValidation(String? val) {
    if (val == null || val.isEmpty) {
      return "Please enter a valid non-empty string";
    } else {
      return null;
    }
  }

  static String? phoneNumberValidation(String? val) {
    final nullStringError = nullStringValidation(val);
    if (nullStringError == null) {
      if (val!.length != 10) {
        return "Please enter a valid phone number";
      }
      return null;
    }
    return nullStringError;
  }
}
