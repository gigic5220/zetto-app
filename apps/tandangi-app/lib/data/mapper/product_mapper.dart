import 'package:tandangi/data/dto/product_response_dto.dart';
import 'package:tandangi/domain/entity/product_entity.dart';

class ProductMapper {
  static ProductEntity toProductEntity(ProductResponseDto dto) {
    return ProductEntity(
      id: dto.id,
      name: dto.name,
      storeId: dto.storeId,
      price: dto.price,
      discountRate: dto.discountRate,
      originPrice: dto.originPrice,
      active: dto.active,
      createdAt: _parseDateTime(dto.createdAt),
      updatedAt: _parseDateTime(dto.updatedAt),
    );
  }

  static DateTime _parseDateTime(String iso) {
    final parsed = DateTime.tryParse(iso);
    if (parsed != null) return parsed;
    throw FormatException('Invalid date-time: $iso');
  }
}
