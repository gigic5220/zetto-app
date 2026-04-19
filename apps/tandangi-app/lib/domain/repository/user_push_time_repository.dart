import 'package:tandangi/domain/entity/user_push_time_entity.dart';

abstract class UserPushTimeRepository {
  Future<UserPushTimeEntity> createUserPushTime({
    required String pushTime,
    required bool isEnabled,
  });

  Future<List<UserPushTimeEntity>> getUserPushTimes();

  Future<UserPushTimeEntity> updateUserPushTime({
    required int id,
    required String pushTime,
    required bool isEnabled,
  });

  Future<void> deleteUserPushTime({required int id});
}
