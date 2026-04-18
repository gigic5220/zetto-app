import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String name,
    required String storeId,
    required double price,
    required double discountRate,
    required double originPrice,
    required bool active,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, Object?> json) =>
      _$ProductEntityFromJson(json);
}
