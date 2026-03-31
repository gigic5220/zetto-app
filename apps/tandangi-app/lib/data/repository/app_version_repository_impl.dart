import 'dart:io';

import 'package:tandangi/data/data_source/app_version_remote_data_source.dart';
import 'package:tandangi/data/mapper/app_version_mapper.dart';
import 'package:tandangi/domain/entity/app_version_entity.dart';
import 'package:tandangi/domain/repository/app_version_repository.dart';

class AppVersionRepositoryImpl implements AppVersionRepository {
  final AppVersionRemoteDataSource remote;
  AppVersionRepositoryImpl(this.remote);

  @override
  Future<AppVersionEntity> getAppVersion() async {
    final response = await remote.getAppVersion(
      platform: Platform.isIOS ? 'ios' : 'android',
    );
    return AppVersionMapper.toAppVersionEntity(response);
  }
}
