import 'package:tandangi/data/dto/paged_list_response_dto.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';

class PagedListMapper {
  static PagedListEntity<T> fromPagedResponseDto<E, T>(
    PagedListResponseDto<E> dto,
    T Function(E) itemMapper,
  ) {
    return PagedListEntity(
      content: dto.content.map(itemMapper).toList(),
      totalElements: dto.totalElements,
      totalPages: dto.totalPages,
      page: dto.page,
      size: dto.size,
      last: dto.last,
    );
  }
}
