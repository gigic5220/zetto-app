import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_dto.freezed.dart';
part 'user_response_dto.g.dart';

@freezed
abstract class UserResponseDto with _$UserResponseDto {
  const factory UserResponseDto({
    required int id,
    required String firebaseUid,
    required String status,
    int? age,
    String? gender,
    double? height,
    double? weight,
    required bool onboardingCompleted,
  }) = _UserResponseDto;

  factory UserResponseDto.fromJson(Map<String, Object?> json) =>
      _$UserResponseDtoFromJson(json);
}
