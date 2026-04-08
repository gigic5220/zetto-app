import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/analyze_response_dto.dart';

abstract class FoodAnalyzeRemoteDataSource {
  Future<AnalyzeResponseDto> analyze({
    required String imagePath,
    String? prompt,
  });
}

class FoodAnalyzeRemoteDataSourceImpl implements FoodAnalyzeRemoteDataSource {
  FoodAnalyzeRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<AnalyzeResponseDto> analyze({
    required String imagePath,
    String? prompt,
  }) async {
    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(
        imagePath,
        filename: 'image.jpg',
      ),
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
    return AnalyzeResponseDto.fromJson(data);
  }
}
