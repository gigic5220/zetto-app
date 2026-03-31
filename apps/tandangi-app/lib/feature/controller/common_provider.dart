import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/user_entity.dart';
import 'package:tandangi/domain/repository/user_repository.dart';

part 'common_provider.g.dart';

@Riverpod(keepAlive: true)
class Me extends _$Me {
  @override
  Future<UserEntity?> build() async {
    try {
      return await getIt<UserRepository>().getMe();
    } catch (e) {
      return null;
    }
  }

  void set(UserEntity? user) {
    state = AsyncValue.data(user);
  }
}
