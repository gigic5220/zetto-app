import 'package:tandangi/domain/entity/character_entity.dart';

abstract class CharacterRepository {
  Future<List<CharacterEntity>> getCharacters();
  Future<void> putUserCharacter({required int characterId});
}
