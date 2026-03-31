import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/app_version_dto.dart';

abstract class AppVersionRemoteDataSource {
  Future<AppVersionDto> getAppVersion({required String platform});
}

class AppVersionRemoteDataSourceImpl implements AppVersionRemoteDataSource {
  final Dio _dio;

  AppVersionRemoteDataSourceImpl(this._dio);

  @override
  Future<AppVersionDto> getAppVersion({required String platform}) async {
    final response = await _dio.get('/api/app-version/$platform');
    return AppVersionDto.fromJson(response.data);
  }
}
