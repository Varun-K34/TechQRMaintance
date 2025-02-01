import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/core/strings.dart';

class ApiServices {
  final Dio dio = Dio();

  ApiServices() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        try {
          final token = await getOrFetchToken();
          //log("hello");
          options.headers['Authorization'] = token;
          handler.next(options);
          log("Request Headers: ${options.headers}");
        } catch (e) {
          log(e.toString());
          handler.reject(DioException(requestOptions: options, error: e));
        }
      },
    ));
  }

  Future<String> getOrFetchToken() async {
    //log("hello");
    final prefs = await SharedPreferences.getInstance();

    // Fetch token from shared preferences
    final storedToken = prefs.getString('auth_token');
    //log("stored token: $storedToken", name: 'ApiServices');

    if (storedToken != null) {
      return storedToken.toString();
    }

    final newToken = await fetchNewToken();
    log("message: $newToken");
    await prefs.setString('auth_token', newToken);
    log("stored token: $newToken");
    return newToken.toString();
  }

// If token is not available, fetch from server
  Future<String> fetchNewToken() async {
    try {
      //log("hello futch token");
      final newtoken = await dio.post(
        kBaseURL + kLogin,
        data: {
          "email": kauthEmail,
          "password": kauthpassword,
        },
      );
      log(newtoken.data['token'].toString());
      //final data = jsonDecode(newtoken.data);
      return newtoken.data['token'].toString();
    } on DioException catch (e) {
      log(e.toString(), name: 'ApiServices');
      return Future.error(e);
    }
  }
}
