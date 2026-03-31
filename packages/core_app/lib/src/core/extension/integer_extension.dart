import 'package:intl/intl.dart';

import 'double_extension.dart';

extension IntegerExtension on int {
  String toStringWithUnit() {
    if (this < 1000) {
      return toString();
    } else if (this < 1000000) {
      return '${(this / 1000).toStringAsFixedOrInt(1)}k';
    } else {
      return '${(this / 1000000).toStringAsFixedOrInt(1)}M';
    }
  }

  int plus(int other) => this + other;

  int minus(int other) => this - other;

  int times(int other) => this * other;

  String fromMillisecondsToHourMinute({bool hideHour = false}) {
    final hour = (this / 1000 / 60 / 60).floor();
    final minute = (((this / 1000 / 60 / 60) - hour) * 60).floor();

    if (hideHour && hour == 0) {
      return '${minute.toTimeText()}분';
    }

    return '${hour.toTimeText()}시간  ${minute.toTimeText()}분';
  }

  String fromMillisecondsToMinuteSecond() {
    final minute = (this / 1000 / 60).floor();
    final second = (((this / 1000 / 60) - minute) * 60).floor();

    return '${minute.toTimeText()}분 ${second.toTimeText()}초';
  }

  String toTimeText() {
    return toString().padLeft(2, '0');
  }

  String toNumberFormat() {
    final formatter = NumberFormat('#,###');
    return formatter.format(this);
  }

  String maxNumberText(int maxNumber) {
    if (this > maxNumber) {
      return '$maxNumber+';
    }
    return toString();
  }
}

extension IntegerExtensionNull on int? {
  bool isMinusOneOrNull() => this == null || this == -1;

  String toStringDefault({String? defaultString}) => isMinusOneOrNull() == true ? (defaultString ?? '-') : '$this';
}
