import 'package:tandangi/data/data_source/user_remote_data_source.dart';
import 'package:tandangi/data/mapper/onboarding_mapper.dart';
import 'package:tandangi/data/mapper/user_mapper.dart';
import 'package:tandangi/domain/entity/onboarding_result_entity.dart';
import 'package:tandangi/domain/entity/user_entity.dart';
import 'package:tandangi/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remote;
  UserRepositoryImpl(this.remote);

  @override
  Future<UserEntity> getMe() async {
    final response = await remote.getMe();
    return AuthMapper.toUserEntity(response);
  }

  @override
  Future<void> postMe() async {
    await remote.postMe();
  }

  @override
  Future<OnboardingResultEntity> putOnboarding({
    required int characterId,
    required String gender,
    required int age,
    required double height,
    required double weight,
  }) async {
    final response = await remote.putOnboarding(
      characterId: characterId,
      gender: gender,
      age: age,
      height: height,
      weight: weight,
    );
    return OnboardingMapper.toOnboardingResultEntity(response);
  }
}
