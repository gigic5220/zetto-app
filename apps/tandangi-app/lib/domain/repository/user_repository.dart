import 'package:tandangi/domain/entity/onboarding_result_entity.dart';
import 'package:tandangi/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getMe();
  Future<void> postMe();
  Future<OnboardingResultEntity> putOnboarding({
    required int characterId,
    required String gender,
    required int age,
    required double height,
    required double weight,
  });
}
