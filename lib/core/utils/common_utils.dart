class CommonUtils {
  // Utility to validate email
  static bool isValidEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$");
    return regex.hasMatch(email);
  }

  // Utility to format date to 'dd/MM/yyyy'
  // static String formatDate(DateTime date) {
  //   final formatter = DateTime('dd/MM/yyyy');
  //   return formatter.format(date);
  // }
}
