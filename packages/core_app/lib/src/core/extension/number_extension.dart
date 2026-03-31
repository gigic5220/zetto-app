extension NumberExtension on num? {
  bool? isInteger() {
    if (this == null) {
      return null;
    }

    if (this == null) {
      return false;
    }

    return this! % 1 == 0;
  }
}
