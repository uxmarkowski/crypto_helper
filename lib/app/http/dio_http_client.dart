import 'dart:io';
import 'package:dio/dio.dart';

import '../api_config.dart';
import 'app_http_client.dart';

class DioHttpClient implements AppHttpClient {

  DioHttpClient() {
    _dio = Dio();

    _dio.options
      ..baseUrl = ApiConfig.baseUrl
      ..connectTimeout = const Duration(seconds: 5)
      ..sendTimeout = const Duration(seconds: 7)
      ..receiveTimeout = const Duration(seconds: 10)
      ..headers = {'Content-Type': 'application/json'};
  }

  late final Dio _dio;

  @override
  Future<Response> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {

    return _dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

}
