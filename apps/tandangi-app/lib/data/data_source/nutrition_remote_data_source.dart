import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/nutrition_standard_response_dto.dart';
import 'package:tandangi/data/dto/today_nutrition_summary_response_dto.dart';

abstract class NutritionRemoteDataSource {
  Future<NutritionStandardResponseDto> getNutritionStandard();
  Future<TodayNutritionSummaryResponseDto> getTodayNutritionSummary();
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
  Future<TodayNutritionSummaryResponseDto> getTodayNutritionSummary() async {
    final response = await _dio.get('/api/nutrition/today-summary');
    final data = response.data as Map<String, dynamic>;
    return TodayNutritionSummaryResponseDto.fromJson(data);
  }
}
