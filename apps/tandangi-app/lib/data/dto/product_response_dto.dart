import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response_dto.freezed.dart';
part 'product_response_dto.g.dart';

/// Spring `ProductResponse`
@freezed
abstract class ProductResponseDto with _$ProductResponseDto {
  const factory ProductResponseDto({
    required int id,
    required String name,
    required String storeId,
    required double price,
    required double discountRate,
    required double originPrice,
    required bool active,
    required String createdAt,
    required String updatedAt,
  }) = _ProductResponseDto;

  factory ProductResponseDto.fromJson(Map<String, Object?> json) =>
      _$ProductResponseDtoFromJson(json);
}
