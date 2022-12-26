import 'package:intl/intl.dart';

class DateFormatPatterns {
  static const String shortDayMonthYear = 'yyyy-MM-dd';
  static const String dateTime = 'yyyy-MM-dd HH:m:s';
}

extension DateTimeExt on DateTime {
  String toFormattedShortYearMonthDayString() {
    return DateFormat(DateFormatPatterns.shortDayMonthYear).format(this);
  }

  String toFormattedDateTimeString() => DateFormat(DateFormatPatterns.dateTime).format(this);
  // ignore: unnecessary_this
  String toIso8601TZString() => '${this.toIso8601String()}Z';
}

extension DateHelper on DateTime {

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  int getDifferenceInDaysWithNow() {
    final now = DateTime.now();
    return now.difference(this).inDays;
  }
}
