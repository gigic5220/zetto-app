import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_entity.freezed.dart';
part 'character_entity.g.dart';

@freezed
abstract class CharacterEntity with _$CharacterEntity {
  const factory CharacterEntity({
    required int id,
    required String name,
    required String description,
    required String imageUrl,
  }) = _CharacterEntity;

  factory CharacterEntity.fromJson(Map<String, Object?> json) =>
      _$CharacterEntityFromJson(json);
}
