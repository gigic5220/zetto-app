import 'package:dio/dio.dart';
import 'package:tandangi/data/dto/common_paging_request_dto.dart';
import 'package:tandangi/data/dto/paged_list_response_dto.dart';
import 'package:tandangi/data/dto/product_response_dto.dart';

abstract class ProductRemoteDataSource {
  Future<PagedListResponseDto<ProductResponseDto>> getProducts({
    required CommonPagingRequestDto dto,
  });
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio _dio;

  ProductRemoteDataSourceImpl(this._dio);

  @override
  Future<PagedListResponseDto<ProductResponseDto>> getProducts({
    required CommonPagingRequestDto dto,
  }) async {
    final response = await _dio.get(
      '/api/products',
      queryParameters: dto.toQueryParameters(),
    );
    final raw = response.data;
    if (raw is! Map) {
      throw StateError('Invalid response from /api/products');
    }
    return PagedListResponseDto<ProductResponseDto>.fromJson(
      Map<String, dynamic>.from(raw),
      (json) =>
          ProductResponseDto.fromJson(Map<String, Object?>.from(json as Map)),
    );
  }
}
