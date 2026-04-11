import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/user_character_detail_entity.dart';

abstract class CharacterRepository {
  Future<List<CharacterEntity>> getCharacters();
  Future<void> putUserCharacter({required int characterId});
  Future<UserCharacterDetailEntity> getUserCharacterDetail();
}
