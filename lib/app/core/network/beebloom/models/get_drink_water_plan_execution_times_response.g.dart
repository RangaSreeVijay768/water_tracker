// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_drink_water_plan_execution_times_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDrinkWaterPlanExecutionTimesResponse
    _$GetDrinkWaterPlanExecutionTimesResponseFromJson(
            Map<String, dynamic> json) =>
        GetDrinkWaterPlanExecutionTimesResponse(
          planRoutineTemplate: json['plan_routine_template'] == null
              ? null
              : PlanRoutineTemplate.fromJson(
                  json['plan_routine_template'] as Map<String, dynamic>),
          drinkType: json['drink_type'] as String?,
          localTime: _$JsonConverterFromJson<String, DateTime>(
              json['local_time'], const DateTimeToTimeConverter().fromJson),
          cron: json['cron'] as String?,
        );

Map<String, dynamic> _$GetDrinkWaterPlanExecutionTimesResponseToJson(
        GetDrinkWaterPlanExecutionTimesResponse instance) =>
    <String, dynamic>{
      'plan_routine_template': instance.planRoutineTemplate,
      'drink_type': instance.drinkType,
      'local_time': _$JsonConverterToJson<String, DateTime>(
          instance.localTime, const DateTimeToTimeConverter().toJson),
      'cron': instance.cron,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
