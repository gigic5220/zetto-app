import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_character_dto.freezed.dart';
part 'user_character_dto.g.dart';

@freezed
abstract class UserCharacterDto with _$UserCharacterDto {
  const factory UserCharacterDto({
    required int id,
    required int characterId,
    required String name,
    required String description,
    required String imageUrl,
  }) = _UserCharacterDto;

  factory UserCharacterDto.fromJson(Map<String, Object?> json) =>
      _$UserCharacterDtoFromJson(json);
}
