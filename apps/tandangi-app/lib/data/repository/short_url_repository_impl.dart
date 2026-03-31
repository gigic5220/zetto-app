import 'package:tandangi/data/data_source/short_url_remote_data_source.dart';
import 'package:tandangi/domain/repository/short_url_repository.dart';

class ShortUrlRepositoryImpl implements ShortUrlRepository {
  final ShortUrlRemoteDataSource remote;
  ShortUrlRepositoryImpl(this.remote);

  @override
  Future<String> getShortUrlDecode({required String shortCode}) async {
    final response = await remote.getShortUrlDecode(shortCode: shortCode);
    return response;
  }
}
