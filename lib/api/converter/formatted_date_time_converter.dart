import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../extensions/date_time_ext.dart';

class FormattedDateTimeConverter implements JsonConverter<DateTime, String> {
  static const shortYearMonthDay = FormattedDateTimeConverter._(
      pattern: DateFormatPatterns.shortDayMonthYear);
  static const optionalShortYearMonthDay =
      _OptionalFormattedDateTimeConverter(pattern: DateFormatPatterns.dateTime);

  final String? pattern;
  final String? locale;

  DateFormat get _dateFormat => DateFormat(pattern, locale);

  const FormattedDateTimeConverter._({
    this.pattern,
    this.locale,
  });

  @override
  DateTime fromJson(String json) {
    return _dateFormat.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return _dateFormat.format(object);
  }
}

class _OptionalFormattedDateTimeConverter
    implements JsonConverter<DateTime?, String?> {
  final String? pattern;
  final String? locale;

  DateFormat get _dateFormat => DateFormat(pattern, locale);

  const _OptionalFormattedDateTimeConverter({
    this.pattern,
    this.locale,
  });

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return _dateFormat.parse(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return _dateFormat.format(object);
  }
}
