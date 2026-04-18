import 'package:tandangi/data/data_source/user_remote_data_source.dart';
import 'package:tandangi/data/mapper/user_mapper.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/user_entity.dart';
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/enum/physical_activity_level_enum.dart';
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
  Future<void> putOnboarding({
    required CharacterEntity selectedCharacter,
    required GenderEnum genderEnum,
    required int age,
    required int height,
    required int weight,
    required PhysicalActivityLevelEnum physicalActivityLevelEnum,
  }) async {
    await remote.putOnboarding(
      characterId: selectedCharacter.id,
      gender: genderEnum.name,
      age: age,
      height: height,
      weight: weight,
      physicalActivityLevel: physicalActivityLevelEnum.name,
    );
  }
}
