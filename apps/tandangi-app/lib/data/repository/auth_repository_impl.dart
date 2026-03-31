import 'package:tandangi/data/data_source/auth_remote_data_source.dart';
import 'package:tandangi/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource);

  @override
  Future<String> getFirebaseCustomTokenByKakao(String kakaoAccessToken) {
    return _dataSource.getFirebaseCustomTokenByKakao(kakaoAccessToken);
  }
}
