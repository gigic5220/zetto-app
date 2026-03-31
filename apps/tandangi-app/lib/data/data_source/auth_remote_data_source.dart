import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<String> getFirebaseCustomTokenByKakao(String kakaoAccessToken);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<String> getFirebaseCustomTokenByKakao(String kakaoAccessToken) async {
    final response = await _dio.post(
      '/api/auth/kakao',
      data: {'accessToken': kakaoAccessToken},
    );
    return response.data['customToken'] as String;
  }
}
