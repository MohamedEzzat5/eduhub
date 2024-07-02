import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(String path,
      {Map<String, dynamic>? queryParameters , Options? options}) async {}
  Future<dynamic> post(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) async {}
  Future<dynamic> put(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) async {}
}
