//extension on double
extension DoubleExtension on double {
  /// 소수 첫째 자리까지 반올림해 표시하고, 그 자리가 0이면 정수만 표시합니다.
  String toRoundedString() {
    final s = toStringAsFixed(1);
    if (s.endsWith('.0')) {
      return s.substring(0, s.length - 2);
    }
    return s;
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
