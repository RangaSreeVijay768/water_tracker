import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/task_activity_goal.dart';
import 'package:drift/drift.dart';

class UserTaskActivityGoals extends Table {
  IntColumn get userTaskActivityGoalId => integer().nullable().autoIncrement()();

  IntColumn get taskActivityGoalId =>
      integer().references(TaskActivityGoals, #taskActivityGoalId)();

  RealColumn get currentGoalValue => real()();

  RealColumn get targetGoalValue => real()();

  RealColumn get normalizedCurrentGoalValue => real()();

  RealColumn get normalizedTargetGoalValue => real()();

  DateTimeColumn get startTime => dateTime()();

  DateTimeColumn get endTime => dateTime()();

  TextColumn get status => textEnum<BooleanStatus>()();

  DateTimeColumn get createdTime => dateTime().nullable()();

  DateTimeColumn get lastUpdatedTime => dateTime().nullable()();
}
