import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_dto.freezed.dart';
part 'app_version_dto.g.dart';

@freezed
abstract class AppVersionDto with _$AppVersionDto {
  const factory AppVersionDto({
    required String latestVersion,
    required int latestVersionCode,
    required String minimumVersion,
    required int minimumVersionCode,
  }) = _AppVersionDto;

  factory AppVersionDto.fromJson(Map<String, Object?> json) =>
      _$AppVersionDtoFromJson(json);
}
