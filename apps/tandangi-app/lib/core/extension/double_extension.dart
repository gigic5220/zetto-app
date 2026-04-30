//extension on double
extension DoubleExtension on double {
  String toRoundedString() {
    if (this == roundToDouble()) {
      return toInt().toString();
    }
    return toString();
  }

  double toPercentage() {
    return this / 100;
  }
}

// String _formatNumber(num? value) {
//     if (value == null) return '-';
//     final doubleValue = value.toDouble();
//     if (doubleValue == doubleValue.roundToDouble()) {
//       return doubleValue.toInt().toString();
//     }
//     return doubleValue.toString();
//   }

//   String _formatValueWithUnit(num? value, String unit) {
//     if (value == null) return '-';
//     return '${_formatNumber(value)}$unit';
//   }

//   String _formatPercent(double? value) {
//     if (value == null) return '-';
//     return '${_formatNumber(value)}%';
//   }
