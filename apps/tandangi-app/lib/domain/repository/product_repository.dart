import 'package:tandangi/domain/entity/paged_list_entity.dart';
import 'package:tandangi/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<PagedListEntity<ProductEntity>> getProducts({
    int? page,
    int? size,
    List<String>? sort,
  });
}
