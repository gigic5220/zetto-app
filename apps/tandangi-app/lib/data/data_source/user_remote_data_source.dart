import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/onboarding_response_dto.dart';
import 'package:tandangi/data/dto/user_response_dto.dart';

abstract class UserRemoteDataSource {
  Future<UserResponseDto> getMe();
  Future<void> postMe();
  Future<OnboardingResponseDto> putOnboarding({
    required int characterId,
    required String gender,
    required int age,
    required int height,
    required int weight,
  });
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<UserResponseDto> getMe() async {
    final response = await _dio.get('/api/user/me');
    final data = response.data as Map<String, dynamic>;
    return UserResponseDto.fromJson(data);
  }

  @override
  Future<Response<dynamic>> postMe() async {
    return await _dio.post('/api/user/me');
  }

  Future<Response<dynamic>> putMe({
    required int age,
    required String gender,
    required int height,
    required int weight,
  }) async {
    return await _dio.put(
      '/api/user',
      data: {'age': age, 'gender': gender, 'height': height, 'weight': weight},
    );
  }

  @override
  Future<OnboardingResponseDto> putOnboarding({
    required int characterId,
    required String gender,
    required int age,
    required int height,
    required int weight,
  }) async {
    final response = await _dio.put(
      '/api/user/onboarding',
      data: {
        'characterId': characterId,
        'gender': gender,
        'age': age,
        'height': height,
        'weight': weight,
      },
    );
    return OnboardingResponseDto.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
