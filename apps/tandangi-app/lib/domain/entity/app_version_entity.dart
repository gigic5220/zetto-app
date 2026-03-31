import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_entity.freezed.dart';
part 'app_version_entity.g.dart';

@freezed
abstract class AppVersionEntity with _$AppVersionEntity {
  const factory AppVersionEntity({
    required String latestVersion,
    required int latestVersionCode,
    required String minimumVersion,
    required int minimumVersionCode,
  }) = _AppVersionEntity;

  factory AppVersionEntity.fromJson(Map<String, Object?> json) =>
      _$AppVersionEntityFromJson(json);
}
