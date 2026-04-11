import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_character_detail_dto.freezed.dart';
part 'user_character_detail_dto.g.dart';

/// Spring `UserCharacterDetailResponse`
@freezed
abstract class UserCharacterDetailResponseDto
    with _$UserCharacterDetailResponseDto {
  const factory UserCharacterDetailResponseDto({
    required UserCharacterSectionDto userCharacter,
    required UserCharacterStateRowDto userCharacterState,
    @Default(<UserCharacterSubStateRowDto>[])
    List<UserCharacterSubStateRowDto> userCharacterSubStates,
    @Default('') String description,
    required String characterImageUrl,
  }) = _UserCharacterDetailResponseDto;

  factory UserCharacterDetailResponseDto.fromJson(Map<String, Object?> json) =>
      _$UserCharacterDetailResponseDtoFromJson(json);
}

@freezed
abstract class UserCharacterSectionDto with _$UserCharacterSectionDto {
  const factory UserCharacterSectionDto({
    int? id,
    required int userId,
    required int characterId,
    required String characterName,
  }) = _UserCharacterSectionDto;

  factory UserCharacterSectionDto.fromJson(Map<String, Object?> json) =>
      _$UserCharacterSectionDtoFromJson(json);
}

@freezed
abstract class UserCharacterStateRowDto with _$UserCharacterStateRowDto {
  const factory UserCharacterStateRowDto({
    int? id,
    required int userCharacterId,
    required int characterStateId,
    required String characterStateCode,
    required String characterStateName,
    String? createdAt,
  }) = _UserCharacterStateRowDto;

  factory UserCharacterStateRowDto.fromJson(Map<String, Object?> json) =>
      _$UserCharacterStateRowDtoFromJson(json);
}

@freezed
abstract class UserCharacterSubStateRowDto with _$UserCharacterSubStateRowDto {
  const factory UserCharacterSubStateRowDto({
    int? id,
    required int userCharacterId,
    required int characterSubStateId,
    required String characterSubStateCode,
    required String characterSubStateName,
    String? createdAt,
  }) = _UserCharacterSubStateRowDto;

  factory UserCharacterSubStateRowDto.fromJson(Map<String, Object?> json) =>
      _$UserCharacterSubStateRowDtoFromJson(json);
}
