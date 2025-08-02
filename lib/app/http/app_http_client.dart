import 'package:dio/dio.dart';

abstract class AppHttpClient {
  const AppHttpClient();

  Future<Response> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

}
