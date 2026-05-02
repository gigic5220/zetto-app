import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/nutrition_standard_response_dto.dart';
import 'package:tandangi/data/dto/user_nutrition_summary_target_basis_update_request_dto.dart';

abstract class NutritionRemoteDataSource {
  Future<NutritionStandardResponseDto> getNutritionStandard();
  Future<NutritionStandardResponseDto> patchSummaryTargetBasis(
    UserNutritionSummaryTargetBasisUpdateRequestDto request,
  );
}

class NutritionRemoteDataSourceImpl implements NutritionRemoteDataSource {
  final Dio _dio;

  NutritionRemoteDataSourceImpl(this._dio);

  @override
  Future<NutritionStandardResponseDto> getNutritionStandard() async {
    final response = await _dio.get('/api/nutrition');
    final data = response.data as Map<String, dynamic>;
    return NutritionStandardResponseDto.fromJson(data);
  }

  @override
  Future<NutritionStandardResponseDto> patchSummaryTargetBasis(
    UserNutritionSummaryTargetBasisUpdateRequestDto request,
  ) async {
    final response = await _dio.patch(
      '/api/nutrition/summary-target-basis',
      data: request.toJson(),
    );
    final data = response.data as Map<String, dynamic>;
    return NutritionStandardResponseDto.fromJson(data);
  }
}
