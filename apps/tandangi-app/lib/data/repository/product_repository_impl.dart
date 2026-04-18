import 'package:tandangi/data/data_source/product_remote_data_source.dart';
import 'package:tandangi/data/dto/common_paging_request_dto.dart';
import 'package:tandangi/data/mapper/paged_list_mapper.dart';
import 'package:tandangi/data/mapper/product_mapper.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';
import 'package:tandangi/domain/entity/product_entity.dart';
import 'package:tandangi/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource _remote;

  ProductRepositoryImpl(this._remote);

  @override
  Future<PagedListEntity<ProductEntity>> getProducts({
    int? page,
    int? size,
    List<String>? sort,
  }) async {
    final paged = await _remote.getProducts(
      dto: CommonPagingRequestDto(page: page, size: size, sort: sort),
    );
    return PagedListMapper.fromPagedResponseDto(
      paged,
      ProductMapper.toProductEntity,
    );
  }
}
