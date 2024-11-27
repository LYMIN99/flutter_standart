class TextUtils {
  // Capitalize the first letter of a string
  static String capitalize(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  // Check if the input is a valid email
  static bool isValidEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$");
    return regex.hasMatch(email);
  }

  // Truncate text if it exceeds a given length
  static String truncate(String text, {int maxLength = 100}) {
    return text.length > maxLength ? '${text.substring(0, maxLength)}...' : text;
  }
}
