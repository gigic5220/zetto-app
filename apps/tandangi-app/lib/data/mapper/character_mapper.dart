import 'package:tandangi/data/dto/character_dto.dart';
import 'package:tandangi/domain/entity/character_entity.dart';

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
}
