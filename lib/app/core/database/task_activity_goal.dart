import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/core/database/user_entities.dart';
import 'package:drift/drift.dart';

class TaskActivityGoals extends Table {
  IntColumn get taskActivityGoalId => integer().nullable().autoIncrement()();

  TextColumn get goalType => textEnum<GoalType>()();

  RealColumn get goalValue => real()();

  TextColumn get status => textEnum<BooleanStatus>()();

  IntColumn get userAccountId =>
      integer().references(UserAccounts, #userAccountId)();

  DateTimeColumn get createdTime => dateTime().nullable()();

  DateTimeColumn get lastUpdatedTime => dateTime().nullable()();
}
