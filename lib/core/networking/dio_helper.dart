import 'dart:math';

import 'package:dio/dio.dart';
import 'package:forexy/core/networking/api_constants.dart';

class DioHelper {
  static late Dio _dio;

  static void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  static Future<Response> getData( {required String endPoint, Map<String, dynamic>? queryParameters, String? token
    
  }) async {
    try {
      final response = await _dio.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> put(
    String url, {
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(url, data: data, options: options);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> delete(String url, {Options? options}) async {
    try {
      final response = await _dio.delete(url, options: options);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}