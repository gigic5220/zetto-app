import 'package:dio/dio.dart';

abstract class ShortUrlRemoteDataSource {
  Future<String> getShortUrlDecode({required String shortCode});
}

class ShortUrlRemoteDataSourceImpl implements ShortUrlRemoteDataSource {
  final Dio _dio;

  ShortUrlRemoteDataSourceImpl(this._dio);

  @override
  Future<String> getShortUrlDecode({required String shortCode}) async {
    final response = await _dio.get(
      '/v1/short-url/decode/$shortCode',
      queryParameters: {'isApp': true},
    );
    return response.data;
  }
}
