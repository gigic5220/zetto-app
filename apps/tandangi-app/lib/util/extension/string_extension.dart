extension StringExtensions on String? {
  bool get isExist => this != null && this!.isNotEmpty;

  bool get isValidUrl {
    if (!isExist) return false;

    try {
      final uri = Uri.parse(this!);
      return uri.hasScheme && uri.hasAuthority;
    } catch (e) {
      return false;
    }
  }
}
