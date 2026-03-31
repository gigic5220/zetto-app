import 'package:tandangi/domain/entity/app_version_entity.dart';

abstract class AppVersionRepository {
  Future<AppVersionEntity> getAppVersion();
}
