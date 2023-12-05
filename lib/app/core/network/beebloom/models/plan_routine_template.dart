import 'package:json_annotation/json_annotation.dart';

part 'plan_routine_template.g.dart';

@JsonSerializable()
class PlanRoutineTemplate {
  factory PlanRoutineTemplate.fromJson(Map<String, dynamic> json) =>
      _$PlanRoutineTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$PlanRoutineTemplateToJson(this);


  String? createdTime;
  String? lastUpdatedTime;
  String? planRoutineTemplateId;
  String? planRoutineName;
  String? planRoutineDescription;
  String? planRoutineCategoryType;
  String? startTime;
  String? endTime;
  int? durationSeconds;
  String? drinkType;

  PlanRoutineTemplate(
      {this.createdTime,
      this.lastUpdatedTime,
      this.planRoutineTemplateId,
      this.planRoutineName,
      this.planRoutineDescription,
      this.planRoutineCategoryType,
      this.startTime,
      this.endTime,
      this.durationSeconds,
      this.drinkType});
}
