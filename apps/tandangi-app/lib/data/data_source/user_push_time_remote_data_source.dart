import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/user_push_time_response_dto.dart';

abstract class UserPushTimeRemoteDataSource {
  Future<UserPushTimeResponseDto> createUserPushTime({
    required String pushTime,
    required bool isEnabled,
  });

  Future<List<UserPushTimeResponseDto>> getUserPushTimes();

  Future<UserPushTimeResponseDto> updateUserPushTime({
    required int id,
    required String pushTime,
    required bool isEnabled,
  });

  Future<void> deleteUserPushTime({required int id});
}

class UserPushTimeRemoteDataSourceImpl implements UserPushTimeRemoteDataSource {
  final Dio _dio;

  UserPushTimeRemoteDataSourceImpl(this._dio);

  @override
  Future<UserPushTimeResponseDto> createUserPushTime({
    required String pushTime,
    required bool isEnabled,
  }) async {
    final response = await _dio.post(
      '/api/user-push-times',
      data: {'pushTime': pushTime, 'isEnabled': isEnabled},
    );
    final data = response.data as Map<String, dynamic>;
    return UserPushTimeResponseDto.fromJson(data);
  }

  @override
  Future<List<UserPushTimeResponseDto>> getUserPushTimes() async {
    final response = await _dio.get('/api/user-push-times');
    final raw = response.data;
    if (raw is! List) {
      throw StateError('Invalid response from /api/user-push-times');
    }
    return raw
        .map(
          (item) => UserPushTimeResponseDto.fromJson(
            Map<String, Object?>.from(item as Map),
          ),
        )
        .toList();
  }

  @override
  Future<UserPushTimeResponseDto> updateUserPushTime({
    required int id,
    required String pushTime,
    required bool isEnabled,
  }) async {
    final response = await _dio.put(
      '/api/user-push-times/$id',
      data: {'pushTime': pushTime, 'isEnabled': isEnabled},
    );
    final data = response.data as Map<String, dynamic>;
    return UserPushTimeResponseDto.fromJson(data);
  }

  @override
  Future<void> deleteUserPushTime({required int id}) async {
    await _dio.delete('/api/user-push-times/$id');
  }
}
