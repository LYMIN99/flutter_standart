import 'package:intl/intl.dart';

class DateUtils {
  // Format date to 'dd/MM/yyyy'
  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }

  // Get current date and time in a custom format
  static String getCurrentDateTime() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    return formatter.format(now);
  }

  // Convert string to DateTime
  static DateTime stringToDate(String dateStr) {
    return DateTime.parse(dateStr);
  }
}
