import 'package:tandangi/data/data_source/user_push_time_remote_data_source.dart';
import 'package:tandangi/data/mapper/user_push_time_mapper.dart';
import 'package:tandangi/domain/entity/user_push_time_entity.dart';
import 'package:tandangi/domain/repository/user_push_time_repository.dart';

class UserPushTimeRepositoryImpl implements UserPushTimeRepository {
  final UserPushTimeRemoteDataSource _remote;

  UserPushTimeRepositoryImpl(this._remote);

  @override
  Future<UserPushTimeEntity> createUserPushTime({
    required String pushTime,
    required bool isEnabled,
  }) async {
    final response = await _remote.createUserPushTime(
      pushTime: pushTime,
      isEnabled: isEnabled,
    );
    return UserPushTimeMapper.toEntity(response);
  }

  @override
  Future<List<UserPushTimeEntity>> getUserPushTimes() async {
    final response = await _remote.getUserPushTimes();
    return response.map(UserPushTimeMapper.toEntity).toList();
  }

  @override
  Future<UserPushTimeEntity> updateUserPushTime({
    required int id,
    required String pushTime,
    required bool isEnabled,
  }) async {
    final response = await _remote.updateUserPushTime(
      id: id,
      pushTime: pushTime,
      isEnabled: isEnabled,
    );
    return UserPushTimeMapper.toEntity(response);
  }

  @override
  Future<void> deleteUserPushTime({required int id}) async {
    await _remote.deleteUserPushTime(id: id);
  }
}
