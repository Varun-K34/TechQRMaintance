import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/core/strings.dart';

class ApiServices {
  final Dio dio;
  bool isFetchingToken = false; // Flag to prevent infinite calls

  ApiServices() : dio = Dio() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          try {
            final token = await getOrFetchToken();
            options.headers['Authorization'] = "Bearer $token";
            handler.next(options);
            log("Request Headers: ${options.headers}");
          } catch (e) {
            log("Request Interceptor Error: $e");
            handler.reject(DioException(requestOptions: options, error: e));
          }
        },
      ),
    );
  }

  Future<String?> getOrFetchToken() async {
    if (isFetchingToken) {
      log("Token is already being fetched, waiting...");
      await Future.delayed(const Duration(seconds: 1));
      return await getStoredToken();
    }

    try {
      final token = await getStoredToken();
      if (token != null) {
        return token;
      }

      isFetchingToken = true;
      log("Fetching new token...");

      final response = await dio.post(
        '$kBaseURL$kLogin',
        queryParameters: {
          'email': kauthEmail,
          'password': kauthpassword,
        },
      );

      final newToken = response.data["token"];
      if (newToken != null) {
        await storeToken(newToken);
        return newToken;
      } else {
        throw Exception("Token not found in response");
      }
    } catch (e) {
      log("Token Fetch Error: $e");
      return Future.error("Failed to fetch token");
    } finally {
      isFetchingToken = false;
    }
  }

  Future<String?> getStoredToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }

  Future<void> storeToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
    log("Token stored successfully");
  }
}
