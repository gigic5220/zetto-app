import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/entity/user_entity.dart';

part 'onboarding_result_entity.freezed.dart';

@freezed
abstract class OnboardingResultEntity with _$OnboardingResultEntity {
  const factory OnboardingResultEntity({
    required UserEntity user,
    required CharacterEntity character,
  }) = _OnboardingResultEntity;
}
