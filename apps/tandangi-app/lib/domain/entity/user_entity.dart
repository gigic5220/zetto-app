import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/enum/user_status_enum.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String firebaseUid,
    required UserStatusEnum status,
    required int? age,
    required GenderEnum? gender,
    required double? height,
    required double? weight,
    required bool onboardingCompleted,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}
