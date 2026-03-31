extension BoolExtensions on bool? {
  bool isNullOrFalse() => this == null || this == false;
  bool isNullOrTrue() => this == null || this == true;
}
