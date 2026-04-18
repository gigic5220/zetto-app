import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_list_response_dto.freezed.dart';
part 'paged_list_response_dto.g.dart';

/// Matches flat Spring Data `Page` JSON; `page` is zero-based.
@Freezed(genericArgumentFactories: true)
abstract class PagedListResponseDto<T extends Object?>
    with _$PagedListResponseDto<T> {
  const factory PagedListResponseDto({
    required List<T> content,
    required int page,
    required int size,
    required int totalElements,
    required int totalPages,
    required bool first,
    required bool last,
  }) = _PagedListResponseDto<T>;

  factory PagedListResponseDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PagedListResponseDtoFromJson(json, fromJsonT);
}
