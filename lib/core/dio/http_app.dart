import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tdd_architecture_course/core/dio/status_app_response.dart';
import 'package:tdd_architecture_course/utils/utilities.dart';

class HttpApp {
  final Dio _dio = Dio();
  late String baseUrl;
  final tokenApp = '';

  HttpApp() {
    baseUrl = getBaseUrl();
  }

  void updateTokenAuthorization(String token) {
    _dio.options.headers['authorization'] = 'Bearer $token';
  }

  void initial() {
    _dio.options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
        headers: {
          'Accept': 'application/json',
        });
    _dio
      ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
        return handler.next(options);
      }, onResponse: (response, handler) {
        StatusAppResponse statusRemoteResponse =
            StatusAppResponse.fromJson(response.data);
        if (statusRemoteResponse.code != HttpStatus.ok) {
          // handle logic token expire 401
          if (statusRemoteResponse.code == HttpStatus.unauthorized) {
            DioException exception = DioException.badResponse(
                statusCode: statusRemoteResponse.code,
                requestOptions: response.requestOptions,
                response: response);
            return handler.reject(exception);
          }
          return handler.resolve(response);
        }
        return handler.resolve(response);
      }, onError: (e, handler) {
        return handler.next(e);
      }))
      ..interceptors.add(
        LogInterceptor(
          requestBody: kDebugMode ? true : false,
          responseBody: kDebugMode ? true : false,
          requestHeader: kDebugMode ? true : false,
        ),
      );
  }

  Future<Response> get(String path) async {
    return await _dio.get(path);
  }

  Future<Response> post(String path, {Object? data}) async {
    return await _dio.post(path, data: data);
  }
}
