import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/user_entities.dart';
import 'package:drift/drift.dart' ;

class PlanRoutines extends Table {
  IntColumn get planRoutineId => integer().nullable().autoIncrement()();

  TextColumn get planRoutineName => text().nullable()();

  TextColumn get drinkType => text()();

  IntColumn get userAccountId =>
      integer().references(UserAccounts, #userAccountId)();

  TextColumn get notificationStatus => textEnum<BooleanStatus>()();

  DateTimeColumn get time => dateTime()();

  DateTimeColumn get createdTime => dateTime()();

  DateTimeColumn get lastUpdatedTime => dateTime()();
}
