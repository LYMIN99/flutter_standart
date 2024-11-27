import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  // Save a string value in local storage
  Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Get a string value from local storage
  Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Save a boolean value
  Future<void> saveBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  // Get a boolean value
  Future<bool?> getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }
}

// Usage Example:
// final localStorageService = LocalStorageService();
// await localStorageService.saveString('user_name', 'John Doe');
// final name = await localStorageService.getString('user_name');