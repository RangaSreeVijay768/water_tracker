import 'package:beebloom_water_tracker/app/core/models/converters/time_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_drink_water_plan_execution_times.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@JsonSerializable()
class GetDrinkWaterPlanExecutionTimesRequest {
  factory GetDrinkWaterPlanExecutionTimesRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetDrinkWaterPlanExecutionTimesRequestFromJson(json);

  Map<String, dynamic> toJson(instance) =>
      _$GetDrinkWaterPlanExecutionTimesRequestToJson(this);

  int? coffee;
  int? tea;

  @DateTimeToTimeConverter()
  DateTime startTime;
  @DateTimeToTimeConverter()
  DateTime endTime;
  int hours;

  GetDrinkWaterPlanExecutionTimesRequest({
    required this.startTime, required this.endTime, required this.hours, this.coffee,
    this.tea,
  });
}
