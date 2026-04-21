import 'package:tandangi/data/dto/character_dto.dart';
import 'package:tandangi/data/dto/user_character_detail_dto.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/user_character_detail_entity.dart';

class CharacterMapper {
  static CharacterEntity toCharacterEntity(CharacterDto dto) {
    return CharacterEntity(
      id: dto.id,
      name: dto.name,
      description: dto.description,
      imageUrl: dto.imageUrl,
    );
  }

  static List<CharacterEntity> toCharacterEntityList(List<CharacterDto> dtos) {
    return dtos.map(toCharacterEntity).toList();
  }

  static UserCharacterDetailEntity toUserCharacterDetailEntity(
    UserCharacterDetailResponseDto dto,
  ) {
    return UserCharacterDetailEntity(
      userCharacter: UserCharacterSectionEntity(
        id: dto.userCharacter.id,
        userId: dto.userCharacter.userId,
        characterId: dto.userCharacter.characterId,
        characterName: dto.userCharacter.characterName,
        characterOriginName: dto.userCharacter.characterOriginName,
      ),
      userCharacterState: UserCharacterStateRowEntity(
        id: dto.userCharacterState.id,
        userCharacterId: dto.userCharacterState.userCharacterId,
        characterStateId: dto.userCharacterState.characterStateId,
        characterStateCode: dto.userCharacterState.characterStateCode,
        characterStateName: dto.userCharacterState.characterStateName,
        createdAt: _parseOffsetDateTime(dto.userCharacterState.createdAt),
      ),
      userCharacterSubStates: dto.userCharacterSubStates
          .map(
            (e) => UserCharacterSubStateRowEntity(
              id: e.id,
              userCharacterId: e.userCharacterId,
              characterSubStateId: e.characterSubStateId,
              characterSubStateCode: e.characterSubStateCode,
              characterSubStateName: e.characterSubStateName,
              createdAt: _parseOffsetDateTime(e.createdAt),
            ),
          )
          .toList(),
      description: dto.description,
      characterImageUrl: dto.characterImageUrl,
    );
  }

  static DateTime? _parseOffsetDateTime(String? iso) {
    if (iso == null || iso.isEmpty) return null;
    return DateTime.tryParse(iso);
  }
}
