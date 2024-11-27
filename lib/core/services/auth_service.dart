import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'api_service.dart';
import '../constants/app_constants.dart';

class AuthService {
  final ApiService _apiService = ApiService();
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  // Login user with email and password
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await _apiService.post(
      AppConstants.apiLoginEndpoint,
      {'email': email, 'password': password},
    );
    await _storeToken(response['token']);
    return response;
  }

  // Store token securely
  Future<void> _storeToken(String token) async {
    await _secureStorage.write(key: 'auth_token', value: token);
  }

  // Retrieve token from storage
  Future<String?> getToken() async {
    return await _secureStorage.read(key: 'auth_token');
  }

  // Log out by clearing the stored token
  Future<void> logout() async {
    await _secureStorage.delete(key: 'auth_token');
  }

  // Check if user is logged in by checking for a token
  Future<bool> isAuthenticated() async {
    final token = await getToken();
    return token != null;
  }
}

// Usage Example:
// final authService = AuthService();
// final loginResponse = await authService.login("email@example.com", "password123");

