import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toZonedDateTimeString({bool? onlyDate}) {
    int offset = timeZoneOffset.inHours;

    DateTime time = DateTime(year, month, day, 23, 59, 59);

    String localTime = DateFormat('yyyy-MM-ddTHH:mm:ss').format(onlyDate == true ? time : this);

    String timezoneSign = offset < 0 ? '-' : '+';

    return '$localTime$timezoneSign${offset.abs().toString().padLeft(2, '0')}:00';
  }

  bool isAfterOrSame(DateTime? dateTime) {
    if (dateTime == null) {
      return false;
    }

    final date = this;

    final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
    return isAtSameMomentAs || date.isAfter(dateTime);
  }

  bool isBeforeOrSame(DateTime? dateTime) {
    if (dateTime == null) {
      return false;
    }

    final date = this;

    final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
    return isAtSameMomentAs || date.isBefore(dateTime);
  }

  bool isBetween(
    DateTime? fromDateTime,
    DateTime? toDateTime,
  ) {
    final date = this;

    final isAfter = date.isAfterOrSame(fromDateTime);
    final isBefore = date.isBeforeOrSame(toDateTime);

    return isAfter && isBefore;
  }

  bool isSameDay(DateTime? dateTime) {
    if (dateTime == null) {
      return false;
    }

    final date = this;

    return date.year == dateTime.year && date.month == dateTime.month && date.day == dateTime.day;
  }

  int diffInDays(DateTime other) {
    return DateTime(year, month, day).difference(DateTime(other.year, other.month, other.day)).inDays;
  }

  String format(String format) {
    return DateFormat(format).format(this);
  }
}
