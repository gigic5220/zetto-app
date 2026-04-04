import 'dart:io';

import 'package:dio/dio.dart';

import '../log/log.dart';

class RetryInterceptor extends Interceptor {
  RetryInterceptor(this.dio);

  static const retryCountKey = 'retry_count';
  static const maxRetryCount = 3;
  static const retryableExceptionTypes = {
    DioExceptionType.sendTimeout,
    DioExceptionType.connectionTimeout,
    DioExceptionType.receiveTimeout,
    DioExceptionType.connectionError,
    DioExceptionType.unknown,
  };

  final Dio dio;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    int retryCount;
    if (err.requestOptions.extra[retryCountKey] == null) {
      retryCount = 0;
    } else {
      retryCount = err.requestOptions.extra[retryCountKey] as int;
    }
    retryCount++;

    if (retryCount <= maxRetryCount && _isRetryable(err)) {
      talker.debug('err = $err, retry ${err.requestOptions.uri} = $retryCount');

      final retryDelay = retryCount * 2;
      await Future.delayed(Duration(seconds: retryDelay));

      err.requestOptions.extra[retryCountKey] = retryCount;

      Response<dynamic> retryResponse;
      if (err.requestOptions.data is FormData) {
        final formData = err.requestOptions.data as FormData;
        final newFormData = FormData();

        newFormData.fields.addAll(formData.fields);
        newFormData.files.addAll(formData.files);

        retryResponse = await dio.fetch(err.requestOptions.copyWith(data: newFormData));
      } else {
        retryResponse = await dio.fetch(err.requestOptions);
      }

      return handler.resolve(retryResponse);
    } else {
      return handler.next(err);
    }
  }

  bool _isRetryable(DioException error) {
    return error.response?.statusCode == HttpStatus.badGateway ||
        error.response?.statusCode == HttpStatus.gatewayTimeout ||
        retryableExceptionTypes.contains(error.type);
  }
}
