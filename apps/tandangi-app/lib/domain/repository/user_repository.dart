import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/user_entity.dart';
import 'package:tandangi/domain/enum/gender_enum.dart';

abstract class UserRepository {
  Future<UserEntity> getMe();
  Future<void> postMe();
  Future<void> putOnboarding({
    required CharacterEntity selectedCharacter,
    required GenderEnum genderEnum,
    required int age,
    required int height,
    required int weight,
  });
}
