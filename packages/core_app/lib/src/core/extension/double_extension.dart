import 'dart:math';

extension DoubleExtensions on double? {
  bool isNullOrZero() => this == null || this == 0;
  bool isNotNullOrZero() => this != null && this != 0;

  String toStringAsFixedOrInt(int fractionDigits) {
    String result = this!.toStringAsFixed(fractionDigits);

    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < fractionDigits; i++) {
      buffer.write('0');
    }

    if (result.split('.').last == buffer.toString()) {
      return this!.toInt().toString();
    } else {
      return result;
    }
  }
}

extension DoubleExtensionsNotNull on double {
  double roundAsFixed(int fractionDigits) {
    double result = this * pow(10, fractionDigits);
    result = result.roundToDouble();

    return result / 10;
  }
}
