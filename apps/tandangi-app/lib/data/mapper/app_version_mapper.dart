// mapper
import 'package:tandangi/data/dto/app_version_dto.dart';
import 'package:tandangi/domain/entity/app_version_entity.dart';

class AppVersionMapper {
  static AppVersionEntity toAppVersionEntity(AppVersionDto dto) {
    return AppVersionEntity(
      latestVersion: dto.latestVersion,
      latestVersionCode: dto.latestVersionCode,
      minimumVersion: dto.minimumVersion,
      minimumVersionCode: dto.minimumVersionCode,
    );
  }
}
