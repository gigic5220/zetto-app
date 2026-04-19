import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/user_push_time_entity.dart';
import 'package:tandangi/domain/repository/user_push_time_repository.dart';

part 'my_action_mixin.dart';
part 'my_provider.g.dart';
part 'my_state_mixin.dart';

@riverpod
class _UserPushTimes extends _$UserPushTimes {
  @override
  Future<List<UserPushTimeEntity>> build() async {
    return await getIt<UserPushTimeRepository>().getUserPushTimes();
  }

  void set(List<UserPushTimeEntity> value) {
    state = AsyncValue.data(value);
  }
}
