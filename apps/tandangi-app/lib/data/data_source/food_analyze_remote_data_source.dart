import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/common_paging_request_dto.dart';
import 'package:tandangi/data/dto/food_analyze_result_dto.dart';
import 'package:tandangi/data/dto/paged_list_response_dto.dart';

abstract class FoodAnalyzeRemoteDataSource {
  Future<FoodAnalyzeResultDto> analyze({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  });

  Future<PagedListResponseDto<FoodAnalyzeResultDto>> getFoodAnalyses({
    required CommonPagingRequestDto dto,
  });

  Future<FoodAnalyzeResultDto> getFoodAnalysis({required int foodAnalysisId});
}

class FoodAnalyzeRemoteDataSourceImpl implements FoodAnalyzeRemoteDataSource {
  FoodAnalyzeRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<FoodAnalyzeResultDto> analyze({
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
      '/api/ai/analyze',
      data: formData,
      options: Options(
        sendTimeout: const Duration(minutes: 2),
        receiveTimeout: const Duration(seconds: 120),
      ),
    );

    final data = response.data;
    if (data == null) {
      throw StateError('Empty response from /api/ai/analyze');
    }
    return FoodAnalyzeResultDto.fromJson(data);
  }

  @override
  Future<PagedListResponseDto<FoodAnalyzeResultDto>> getFoodAnalyses({
    required CommonPagingRequestDto dto,
  }) async {
    final response = await _dio.get(
      '/api/food-analyses',
      queryParameters: dto.toQueryParameters(),
    );

    final raw = response.data;
    if (raw is! Map) {
      throw StateError('Invalid response from /api/food-analyses');
    }

    return PagedListResponseDto<FoodAnalyzeResultDto>.fromJson(
      Map<String, dynamic>.from(raw),
      (json) =>
          FoodAnalyzeResultDto.fromJson(Map<String, Object?>.from(json as Map)),
    );
  }

  @override
  Future<FoodAnalyzeResultDto> getFoodAnalysis({
    required int foodAnalysisId,
  }) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/api/food-analyses/$foodAnalysisId',
    );

    final data = response.data;
    if (data == null) {
      throw StateError(
        'Empty response from /api/food-analyses/$foodAnalysisId',
      );
    }

    return FoodAnalyzeResultDto.fromJson(data);
  }
}
