import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/daily_nutrition_summaries_response_dto.dart';

/// GET [/api/daily-nutrition-summaries]; query dates use server format `yyyy.MM.dd`.
/// 응답은 항상 [DailyNutritionSummariesResponseDto] 래퍼(`startDate`, `endDate`, `summaries`).
abstract class DailyNutritionSummaryRemoteDataSource {
  Future<DailyNutritionSummariesResponseDto> getDailyNutritionSummaries({
    required String startDate,
    String? endDate,
  });
}

class DailyNutritionSummaryRemoteDataSourceImpl
    implements DailyNutritionSummaryRemoteDataSource {
  DailyNutritionSummaryRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  static const String _basePath = '/api/daily-nutrition-summaries';

  @override
  Future<DailyNutritionSummariesResponseDto> getDailyNutritionSummaries({
    required String startDate,
    String? endDate,
  }) async {
    final queryParameters = <String, dynamic>{'startDate': startDate};
    if (endDate != null) {
      queryParameters['endDate'] = endDate;
    }
    final response = await _dio.get<Object?>(
      _basePath,
      queryParameters: queryParameters,
    );
    final data = response.data;
    if (data is! Map<String, dynamic>) {
      throw StateError(
        'Expected DailyNutritionSummariesResponse map, got ${data.runtimeType}',
      );
    }
    return DailyNutritionSummariesResponseDto.fromJson(
      Map<String, Object?>.from(data),
    );
  }
}
