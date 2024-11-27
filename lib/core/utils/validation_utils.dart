class ValidationUtils {
  // Validate password strength
  static bool isValidPassword(String password) {
    // Example: At least one digit, one uppercase, one lowercase, and at least 8 characters
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');
    return passwordRegex.hasMatch(password);
  }

  // Validate phone number (simple example)
  static bool isValidPhoneNumber(String phone) {
    final phoneRegex = RegExp(r'^\+?\d{10,15}$');
    return phoneRegex.hasMatch(phone);
  }
}
