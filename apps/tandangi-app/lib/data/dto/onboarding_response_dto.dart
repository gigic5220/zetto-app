import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/data/dto/user_character_dto.dart';
import 'package:tandangi/data/dto/user_response_dto.dart';

part 'onboarding_response_dto.freezed.dart';
part 'onboarding_response_dto.g.dart';

@freezed
abstract class OnboardingResponseDto with _$OnboardingResponseDto {
  const factory OnboardingResponseDto({
    required UserResponseDto user,
    required UserCharacterDto userCharacter,
  }) = _OnboardingResponseDto;

  factory OnboardingResponseDto.fromJson(Map<String, Object?> json) =>
      _$OnboardingResponseDtoFromJson(json);
}
