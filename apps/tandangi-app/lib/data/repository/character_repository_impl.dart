import 'package:tandangi/data/data_source/character_remote_data_source.dart';
import 'package:tandangi/data/mapper/character_mapper.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/repository/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteDataSource _dataSource;

  CharacterRepositoryImpl(this._dataSource);

  @override
  Future<List<CharacterEntity>> getCharacters() async {
    final dtos = await _dataSource.getCharacters();
    return CharacterMapper.toCharacterEntityList(dtos);
  }

  @override
  Future<void> putUserCharacter({required int characterId}) async {
    await _dataSource.putUserCharacter(characterId: characterId);
  }
}
