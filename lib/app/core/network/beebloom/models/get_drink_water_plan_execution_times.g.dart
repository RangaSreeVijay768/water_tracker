// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_drink_water_plan_execution_times.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDrinkWaterPlanExecutionTimesRequest
    _$GetDrinkWaterPlanExecutionTimesRequestFromJson(
            Map<String, dynamic> json) =>
        GetDrinkWaterPlanExecutionTimesRequest(
          startTime: const DateTimeToTimeConverter()
              .fromJson(json['start_time'] as String),
          endTime: const DateTimeToTimeConverter()
              .fromJson(json['end_time'] as String),
          hours: json['hours'] as int,
          coffee: json['coffee'] as int?,
          tea: json['tea'] as int?,
        );

Map<String, dynamic> _$GetDrinkWaterPlanExecutionTimesRequestToJson(
        GetDrinkWaterPlanExecutionTimesRequest instance) =>
    <String, dynamic>{
      'coffee': instance.coffee,
      'tea': instance.tea,
      'start_time': const DateTimeToTimeConverter().toJson(instance.startTime),
      'end_time': const DateTimeToTimeConverter().toJson(instance.endTime),
      'hours': instance.hours,
    };
