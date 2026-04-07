import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/onboarding_result_entity.dart';
import 'package:tandangi/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getMe();
  Future<void> postMe();
  Future<OnboardingResultEntity> putOnboarding({
    required CharacterEntity selectedCharacter,
    required String gender,
    required int age,
    required int height,
    required int weight,
  });
}
