import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeToTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeToTimeConverter();

  @override
  DateTime fromJson(String json) =>
      AppDateTimeUtils.parseTimeStringToDateTime(json);

  @override
  String toJson(DateTime object) =>
      AppDateTimeUtils.formatDateTimeToTimeSerializableString(object);
}
