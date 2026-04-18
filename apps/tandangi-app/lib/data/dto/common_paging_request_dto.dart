class CommonPagingRequestDto {
  final int? page;
  final int? size;
  final List<String>? sort;

  CommonPagingRequestDto({this.page, this.size, this.sort});

  Map<String, dynamic> toQueryParameters() {
    final queryParameters = <String, dynamic>{};
    if (page != null) {
      queryParameters['page'] = page;
    }
    if (size != null) {
      queryParameters['size'] = size;
    }
    if (sort != null) {
      queryParameters['sort'] = sort;
    }
    return queryParameters;
  }
}
