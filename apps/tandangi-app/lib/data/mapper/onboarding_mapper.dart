import 'package:tandangi/data/dto/onboarding_response_dto.dart';
import 'package:tandangi/data/mapper/user_mapper.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/onboarding_result_entity.dart';

class OnboardingMapper {
  static OnboardingResultEntity toOnboardingResultEntity(
    OnboardingResponseDto dto,
  ) {
    final userEntity = AuthMapper.toUserEntity(dto.user);
    final characterEntity = CharacterEntity(
      id: dto.userCharacter.characterId,
      name: dto.userCharacter.name,
      description: dto.userCharacter.description,
      imageUrl: dto.userCharacter.imageUrl,
    );
    return OnboardingResultEntity(user: userEntity, character: characterEntity);
  }
}
