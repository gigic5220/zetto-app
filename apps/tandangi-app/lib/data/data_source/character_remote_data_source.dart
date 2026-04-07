import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/character_dto.dart';

abstract class CharacterRemoteDataSource {
  Future<List<CharacterDto>> getCharacters();
  Future<void> postUserCharacter({required int characterId});
}

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  final Dio _dio;

  CharacterRemoteDataSourceImpl(this._dio);

  @override
  Future<List<CharacterDto>> getCharacters() async {
    final response = await _dio.get('/api/characters');
    final list = response.data as List<dynamic>;
    return list
        .map((e) => CharacterDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> postUserCharacter({required int characterId}) async {
    await _dio.post('/api/user/characters/$characterId');
  }

  @override
  Future<void> putUserCharacter({required int characterId}) async {
    await _dio.put('/api/user/characters/$characterId');
  }
}
