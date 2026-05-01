import 'package:firebase_auth/firebase_auth.dart';
import 'package:tandangi/data/data_source/food_analyze_remote_data_source.dart';
import 'package:tandangi/data/dto/common_paging_request_dto.dart';
import 'package:tandangi/data/mapper/food_analyze_mapper.dart';
import 'package:tandangi/data/mapper/food_history_items_serving_adjust_mapper.dart';
import 'package:tandangi/data/mapper/paged_list_mapper.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/entity/food_history_items_serving_adjust_entity.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

class FoodAnalyzeRepositoryImpl implements FoodAnalyzeRepository {
  FoodAnalyzeRepositoryImpl(this._remote);

  final FoodAnalyzeRemoteDataSource _remote;

  @override
  Future<FoodAnalysisResultEntity> postFoodAnalysis({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  }) async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw StateError('Not logged in');
    }
    final dto = await _remote.postFoodAnalysis(
      imagePath: imagePath,
      includeWatermark: includeWatermark,
      prompt: prompt,
    );
    return FoodAnalysisResultEntity(foodAnalysisId: dto.foodAnalysisId);
  }

  @override
  Future<PagedListEntity<FoodAnalysisEntity>> getFoodAnalysises({
    int? page,
    int? size,
    List<String>? sort,
    String? date,
  }) async {
    final paged = await _remote.getFoodAnalysises(
      paging: CommonPagingRequestDto(page: page, size: size, sort: sort),
      date: date,
    );

    return PagedListMapper.fromPagedResponseDto(
      paged,
      FoodAnalyzeMapper.toEntity,
    );
  }

  @override
  Future<FoodAnalysisEntity> getFoodAnalysis({
    required int foodAnalysisId,
  }) async {
    final dto = await _remote.getFoodAnalysis(foodAnalysisId: foodAnalysisId);
    return FoodAnalyzeMapper.toEntity(dto);
  }

  @override
  Future<FoodHistoryItemsServingAdjustEntity> adjustHistoryItems({
    required int foodAnalysisId,
    required List<FoodHistoryItemServingAdjustmentEntity> items,
  }) async {
    final dto = await _remote.adjustHistoryItems(
      foodAnalysisId: foodAnalysisId,
      dto: FoodHistoryItemsServingAdjustMapper.toRequestDto(items),
    );
    return FoodHistoryItemsServingAdjustMapper.toEntity(dto);
  }
}
