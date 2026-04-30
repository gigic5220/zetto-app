import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/common_paging_request_dto.dart';
import 'package:tandangi/data/dto/food_history_items_serving_adjust_dto.dart';
import 'package:tandangi/data/dto/food_analysis_dto.dart';
import 'package:tandangi/data/dto/paged_list_response_dto.dart';

abstract class FoodAnalyzeRemoteDataSource {
  Future<FoodAnalysisDto> postFoodAnalysis({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  });

  Future<PagedListResponseDto<FoodAnalysisDto>> getFoodAnalysises({
    required CommonPagingRequestDto paging,
    String? date,
  });

  Future<FoodAnalysisDto> getFoodAnalysis({required int foodAnalysisId});

  Future<FoodHistoryItemsServingAdjustResponseDto> adjustHistoryItemsServings({
    required int foodAnalysisId,
    required FoodHistoryItemsServingAdjustRequestDto dto,
  });
}

class FoodAnalyzeRemoteDataSourceImpl implements FoodAnalyzeRemoteDataSource {
  FoodAnalyzeRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<FoodAnalysisDto> postFoodAnalysis({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  }) async {
    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(imagePath, filename: 'image.jpg'),
      'includeWatermark': includeWatermark,
      if (prompt != null && prompt.isNotEmpty) 'prompt': prompt,
    });

    final response = await _dio.post<Map<String, dynamic>>(
      '/api/food-analysis',
      data: formData,
      options: Options(
        sendTimeout: const Duration(minutes: 2),
        receiveTimeout: const Duration(seconds: 120),
      ),
    );

    final data = response.data;
    if (data == null) {
      throw StateError('Empty response from /api/food-analysis');
    }
    return FoodAnalysisDto.fromJson(data);
  }

  @override
  Future<PagedListResponseDto<FoodAnalysisDto>> getFoodAnalysises({
    required CommonPagingRequestDto paging,
    String? date,
  }) async {
    final queryParameters = Map<String, dynamic>.from(
      paging.toQueryParameters(),
    );
    if (date != null && date.isNotEmpty) {
      queryParameters['date'] = date;
    }

    final response = await _dio.get(
      '/api/food-analysis',
      queryParameters: queryParameters,
    );

    final raw = response.data;
    if (raw is! Map) {
      throw StateError('Invalid response from /api/food-analysis');
    }

    return PagedListResponseDto<FoodAnalysisDto>.fromJson(
      Map<String, dynamic>.from(raw),
      (json) =>
          FoodAnalysisDto.fromJson(Map<String, Object?>.from(json as Map)),
    );
  }

  @override
  Future<FoodAnalysisDto> getFoodAnalysis({required int foodAnalysisId}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/api/food-analysis/$foodAnalysisId',
    );

    final data = response.data;
    if (data == null) {
      throw StateError(
        'Empty response from /api/food-analysis/$foodAnalysisId',
      );
    }

    return FoodAnalysisDto.fromJson(data);
  }

  @override
  Future<FoodHistoryItemsServingAdjustResponseDto> adjustHistoryItemsServings({
    required int foodAnalysisId,
    required FoodHistoryItemsServingAdjustRequestDto dto,
  }) async {
    final response = await _dio.patch<Map<String, dynamic>>(
      '/api/food-analysis/$foodAnalysisId/history-items/servings',
      data: dto.toJson(),
    );

    final data = response.data;
    if (data == null) {
      throw StateError(
        'Empty response from /api/food-analysis/$foodAnalysisId/history-items/servings',
      );
    }

    return FoodHistoryItemsServingAdjustResponseDto.fromJson(data);
  }
}
