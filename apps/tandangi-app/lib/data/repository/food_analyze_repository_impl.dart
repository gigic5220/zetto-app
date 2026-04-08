import 'package:firebase_auth/firebase_auth.dart';
import 'package:tandangi/data/data_source/food_analyze_remote_data_source.dart';
import 'package:tandangi/data/mapper/food_analyze_mapper.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

class FoodAnalyzeRepositoryImpl implements FoodAnalyzeRepository {
  FoodAnalyzeRepositoryImpl(this._remote);

  final FoodAnalyzeRemoteDataSource _remote;

  @override
  Future<FoodAnalyzeResultEntity> analyzeImage({
    required String imagePath,
    String? prompt,
  }) async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw StateError('Not logged in');
    }
    final dto = await _remote.analyze(imagePath: imagePath, prompt: prompt);
    return FoodAnalyzeMapper.toEntity(dto);
  }
}
