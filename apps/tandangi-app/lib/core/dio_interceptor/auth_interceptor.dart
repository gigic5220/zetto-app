import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tandangi/data/dto/error_reponse_dto.dart';
import 'package:tandangi/util/extension/string_extension.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.data is! FormData) {
      options.contentType ??= Headers.jsonContentType;
    }

    String? firebaseIdToken;

    try {
      firebaseIdToken = await FirebaseAuth.instance.currentUser?.getIdToken();
    } catch (_) {
      firebaseIdToken = null;
    }

    if (firebaseIdToken.isExist) {
      options.headers['Authorization'] = 'Bearer $firebaseIdToken';
    }

    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;
    final alreadyRetried = err.requestOptions.extra['retried'] == true;

    if (statusCode == HttpStatus.unauthorized && !alreadyRetried) {
      final refreshedFirebaseIdToken = await FirebaseAuth.instance.currentUser
          ?.getIdToken(true);

      if (refreshedFirebaseIdToken.isExist) {
        try {
          final headers = Map<String, dynamic>.from(err.requestOptions.headers)
            ..['Authorization'] = 'Bearer $refreshedFirebaseIdToken';

          final newOptions = err.requestOptions.copyWith(
            headers: headers,
            extra: {...err.requestOptions.extra, 'retried': true},
          );

          Response<dynamic> retryResponse;

          if (err.requestOptions.data is FormData) {
            final formData = err.requestOptions.data as FormData;
            final newFormData = FormData();
            newFormData.fields.addAll(formData.fields);
            newFormData.files.addAll(
              formData.files.map(
                (entry) => MapEntry(entry.key, entry.value.clone()),
              ),
            );

            retryResponse = await dio.fetch(
              newOptions.copyWith(data: newFormData),
            );
          } else {
            retryResponse = await dio.fetch(newOptions);
          }

          return handler.resolve(retryResponse);
        } catch (_) {
          return handler.reject(err);
        }
      }
    }

    dynamic parsedData;
    final responseData = err.response?.data;

    if (responseData is Map<String, dynamic>) {
      try {
        parsedData = ErrorResponseDto.fromJson(responseData);
      } catch (_) {
        parsedData = responseData;
      }
    } else {
      parsedData = responseData;
    }

    return handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: Response(
          statusCode: err.response?.statusCode,
          statusMessage: err.response?.statusMessage,
          isRedirect: err.response?.isRedirect ?? false,
          redirects: err.response?.redirects ?? [],
          extra: err.response?.extra ?? {},
          requestOptions: err.requestOptions,
          headers: err.response?.headers,
          data: parsedData,
        ),
        type: err.type,
        error: err.error,
        stackTrace: err.stackTrace,
        message: err.message,
      ),
    );
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    return handler.next(response);
  }
}
