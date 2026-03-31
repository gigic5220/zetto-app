import 'package:dio/dio.dart';

class ApiLoggerInterceptor extends Interceptor {
  final Map<int, ApiLogInfo> _log = {};

  Map<int, ApiLogInfo> get logs => _log;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestTime = DateTime.now().millisecondsSinceEpoch;
    final url = options.uri.toString();
    final method = options.method;
    final data = options.data;

    final identifier =
        requestTime +
        url.codeUnits.reduce((a, b) => a + b) +
        method.codeUnits.reduce((a, b) => a + b) +
        data.toString().codeUnits.reduce((a, b) => a + b);

    options.extra['identifier'] = identifier;

    _log[identifier] = ApiLogInfo(requestOptions: options, requestTime: requestTime);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    final identifier = response.requestOptions.extra['identifier'] as int;

    if (_log[identifier] == null) return;

    final responseTime = DateTime.now().millisecondsSinceEpoch;

    _log[identifier] = _log[identifier]!.copyWith(
      response: response,
      responseTime: responseTime,
      duration: responseTime - _log[identifier]!.requestTime,
    );

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final identifier = err.requestOptions.extra['identifier'] as int;

    if (_log[identifier] == null) return;

    _log[identifier] = _log[identifier]!.copyWith(error: err);

    super.onError(err, handler);
  }
}

class ApiLogInfo {
  const ApiLogInfo({
    required this.requestOptions,
    this.response,
    this.error,
    required this.requestTime,
    this.responseTime,
    this.duration,
  });

  final RequestOptions requestOptions;
  final Response<dynamic>? response;
  final DioException? error;
  final int requestTime;
  final int? responseTime;
  final int? duration;

  ApiLogInfo copyWith({
    RequestOptions? requestOptions,
    Response<dynamic>? response,
    DioException? error,
    int? requestTime,
    int? responseTime,
    int? duration,
  }) {
    return ApiLogInfo(
      requestOptions: requestOptions ?? this.requestOptions,
      response: response ?? this.response,
      error: error ?? this.error,
      requestTime: requestTime ?? this.requestTime,
      responseTime: responseTime ?? this.responseTime,
      duration: duration ?? this.duration,
    );
  }

  @override
  String toString() {
    return 'ApiLogInfo(requestOptions: $requestOptions, response: $response, error: $error)';
  }
}
