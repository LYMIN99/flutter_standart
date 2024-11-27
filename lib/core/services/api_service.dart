import 'package:dio/dio.dart';
import '../constants/app_constants.dart';

class ApiService {
  final Dio _dio = Dio();

  // Initialize the Dio client
  ApiService() {
    _dio.options.baseUrl = AppConstants.apiUrl;
    _dio.options.connectTimeout =
        const Duration(seconds: AppConstants.networkTimeout);
    _dio.options.receiveTimeout =
        const Duration(seconds: AppConstants.networkTimeout);
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));
  }

  // Get data from API
  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response.data;
    } catch (e) {
      // Handle error appropriately
      throw Exception("Error fetching data: $e");
    }
  }

  // Post data to API
  Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response.data;
    } catch (e) {
      throw Exception("Error posting data: $e");
    }
  }

  // Custom request methods can go here (PUT, DELETE, etc.)
}

// Usage Example:
// final apiService = ApiService();
// final response = await apiService.get('auth/login');
