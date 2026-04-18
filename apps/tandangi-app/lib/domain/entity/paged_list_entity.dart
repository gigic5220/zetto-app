import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_list_entity.freezed.dart';

@freezed
abstract class PagedListEntity<T> with _$PagedListEntity<T> {
  const factory PagedListEntity({
    required List<T> content,
    required int totalElements,
    required int totalPages,
    required int page,
    required int size,
    required bool last,
  }) = _PagedListEntity<T>;
}
