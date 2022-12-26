import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  DateTime fromJson(int json) {
    return DateTime.fromMillisecondsSinceEpoch(json * 1000);
  }

  @override
  int toJson(DateTime object) {
    throw object.millisecondsSinceEpoch / 1000;
  }
}
