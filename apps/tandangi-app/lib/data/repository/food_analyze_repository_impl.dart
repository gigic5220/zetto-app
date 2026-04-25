import 'package:firebase_auth/firebase_auth.dart';
import 'package:tandangi/data/data_source/food_analyze_remote_data_source.dart';
import 'package:tandangi/data/dto/common_paging_request_dto.dart';
import 'package:tandangi/data/mapper/food_analyze_mapper.dart';
import 'package:tandangi/data/mapper/paged_list_mapper.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

class FoodAnalyzeRepositoryImpl implements FoodAnalyzeRepository {
  FoodAnalyzeRepositoryImpl(this._remote);

  final FoodAnalyzeRemoteDataSource _remote;

  @override
  Future<FoodAnalyzeResultEntity> analyzeImage({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  }) async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw StateError('Not logged in');
    }
    final dto = await _remote.analyze(
      imagePath: imagePath,
      includeWatermark: includeWatermark,
      prompt: prompt,
    );
    return FoodAnalyzeMapper.toEntity(dto);
  }

  @override
  Future<PagedListEntity<FoodAnalyzeResultEntity>> getFoodAnalyses({
    int? page,
    int? size,
    List<String>? sort,
  }) async {
    final paged = await _remote.getFoodAnalyses(
      dto: CommonPagingRequestDto(page: page, size: size, sort: sort),
    );

    return PagedListMapper.fromPagedResponseDto(
      paged,
      FoodAnalyzeMapper.toEntity,
    );
  }

  @override
  Future<FoodAnalyzeResultEntity> getFoodAnalysis({
    required int foodAnalysisId,
  }) async {
    final dto = await _remote.getFoodAnalysis(foodAnalysisId: foodAnalysisId);
    return FoodAnalyzeMapper.toEntity(dto);
  }
}
