import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_push_time_entity.freezed.dart';
part 'user_push_time_entity.g.dart';

@freezed
abstract class UserPushTimeEntity with _$UserPushTimeEntity {
  const factory UserPushTimeEntity({
    required int id,
    required int userId,
    required String pushTime,
    required bool isEnabled,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserPushTimeEntity;

  factory UserPushTimeEntity.fromJson(Map<String, Object?> json) =>
      _$UserPushTimeEntityFromJson(json);
}
