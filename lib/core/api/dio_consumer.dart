import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:faculty_app/core/api/status_code.dart';
import 'package:flutter/foundation.dart';
import 'package:faculty_app/injection_container.dart' as di;
import '../error/exceptions.dart';
import 'api_consumer.dart';
import 'app_interceptor.dart';
import 'end_points.dart';

class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
    (client.httpClientAdapter as IOHttpClientAdapter).createHttpClient;
    (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internetServerError;
      };
    client.interceptors.add(di.sl<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(di.sl<LogInterceptor>());
    }
  }

  @override
  Future get(String path, {Map<String, dynamic>? queryParameters , Options? options}) async {
    try {
      final response = await client.get(path, queryParameters: queryParameters , options: options);
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handleDioException(error);
    }
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      bool fromDataIsEnabled = false}) async {
    try {
      final response = await client.post(path,
          queryParameters: queryParameters,
          data: fromDataIsEnabled ? FormData.fromMap(body!) : body);
          
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handleDioException(error);
    }
  }

  @override
  Future put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response =
          await client.put(path, queryParameters: queryParameters, data: body);
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handleDioException(error);
    }
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    final responseJson = jsonDecode(response.data.toString());
    return responseJson;
  }

  dynamic _handleDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw const FetchDataException();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            throw const BadRequestException();
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw const UnauthorizedException();
          case StatusCode.notFound:
            throw const NotFoundException();
          case StatusCode.conflict:
            throw const ConflictException();
          case StatusCode.internetServerError:
            throw const InternalServerErrorException();
        }
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.connectionError:
        throw const InternalServerErrorException();

      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        throw const InternalServerErrorException();
    }
  }
}
