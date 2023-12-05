import 'package:beebloom_water_tracker/app/core/models/converters/time_converter.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/models/plan_routine_template.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_drink_water_plan_execution_times_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetDrinkWaterPlanExecutionTimesResponse {
  factory GetDrinkWaterPlanExecutionTimesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetDrinkWaterPlanExecutionTimesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetDrinkWaterPlanExecutionTimesResponseToJson(this);

  PlanRoutineTemplate? planRoutineTemplate;
  @JsonKey(name: 'drink_type')
  String? drinkType;
  @DateTimeToTimeConverter()
  DateTime? localTime;
  String? cron;

  GetDrinkWaterPlanExecutionTimesResponse(
      {this.planRoutineTemplate, this.drinkType, this.localTime, this.cron});

  @override
  String toString() {
    return 'GetDrinkWaterPlanExecutionTimesResponse{planRoutineTemplate: $planRoutineTemplate, drinkType: $drinkType, localTime: $localTime, cron: $cron}';
  }
}
