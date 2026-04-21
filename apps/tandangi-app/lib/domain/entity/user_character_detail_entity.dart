import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_character_detail_entity.freezed.dart';

/// `GET /api/characters/user` 응답 (domain)
@freezed
abstract class UserCharacterDetailEntity with _$UserCharacterDetailEntity {
  const factory UserCharacterDetailEntity({
    required UserCharacterSectionEntity userCharacter,
    required UserCharacterStateRowEntity userCharacterState,
    @Default(<UserCharacterSubStateRowEntity>[])
    List<UserCharacterSubStateRowEntity> userCharacterSubStates,
    @Default('') String description,
    required String characterImageUrl,
  }) = _UserCharacterDetailEntity;
}

@freezed
abstract class UserCharacterSectionEntity with _$UserCharacterSectionEntity {
  const factory UserCharacterSectionEntity({
    int? id,
    required int userId,
    required int characterId,
    required String characterName,
    required String characterOriginName,
  }) = _UserCharacterSectionEntity;
}

@freezed
abstract class UserCharacterStateRowEntity with _$UserCharacterStateRowEntity {
  const factory UserCharacterStateRowEntity({
    int? id,
    required int userCharacterId,
    required int characterStateId,
    required String characterStateCode,
    required String characterStateName,
    DateTime? createdAt,
  }) = _UserCharacterStateRowEntity;
}

@freezed
abstract class UserCharacterSubStateRowEntity
    with _$UserCharacterSubStateRowEntity {
  const factory UserCharacterSubStateRowEntity({
    int? id,
    required int userCharacterId,
    required int characterSubStateId,
    required String characterSubStateCode,
    required String characterSubStateName,
    DateTime? createdAt,
  }) = _UserCharacterSubStateRowEntity;
}
