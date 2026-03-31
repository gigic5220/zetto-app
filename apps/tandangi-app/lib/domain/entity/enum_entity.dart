import 'package:freezed_annotation/freezed_annotation.dart';

part 'enum_entity.freezed.dart';
part 'enum_entity.g.dart';

@freezed
abstract class EnumEntity with _$EnumEntity {
  const factory EnumEntity({required String key, required String value}) =
      _EnumEntity;

  factory EnumEntity.fromJson(Map<String, Object?> json) =>
      _$EnumEntityFromJson(json);
}
