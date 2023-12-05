// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_routine_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanRoutineTemplate _$PlanRoutineTemplateFromJson(Map<String, dynamic> json) =>
    PlanRoutineTemplate(
      createdTime: json['createdTime'] as String?,
      lastUpdatedTime: json['lastUpdatedTime'] as String?,
      planRoutineTemplateId: json['planRoutineTemplateId'] as String?,
      planRoutineName: json['planRoutineName'] as String?,
      planRoutineDescription: json['planRoutineDescription'] as String?,
      planRoutineCategoryType: json['planRoutineCategoryType'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      durationSeconds: json['durationSeconds'] as int?,
      drinkType: json['drinkType'] as String?,
    );

Map<String, dynamic> _$PlanRoutineTemplateToJson(
        PlanRoutineTemplate instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime,
      'lastUpdatedTime': instance.lastUpdatedTime,
      'planRoutineTemplateId': instance.planRoutineTemplateId,
      'planRoutineName': instance.planRoutineName,
      'planRoutineDescription': instance.planRoutineDescription,
      'planRoutineCategoryType': instance.planRoutineCategoryType,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'durationSeconds': instance.durationSeconds,
      'drinkType': instance.drinkType,
    };
