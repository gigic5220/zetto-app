import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/character_dto.dart';
import 'package:tandangi/data/dto/user_character_detail_dto.dart';

abstract class CharacterRemoteDataSource {
  Future<List<CharacterDto>> getCharacters();
  Future<void> putUserCharacter({required int characterId});
  Future<UserCharacterDetailResponseDto> getUserCharacterDetail();
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
  Future<void> putUserCharacter({required int characterId}) async {
    await _dio.put('/api/characters/user/$characterId');
  }

  @override
  Future<UserCharacterDetailResponseDto> getUserCharacterDetail() async {
    final response = await _dio.get<Map<String, dynamic>>('/api/characters/user');
    final data = response.data;
    if (data == null) {
      throw StateError('Empty response from /api/characters/user');
    }
    return UserCharacterDetailResponseDto.fromJson(data);
  }
}
