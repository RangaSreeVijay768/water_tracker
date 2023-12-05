import 'package:beebloom_water_tracker/app/core/database/user_entities.dart';
import 'package:drift/drift.dart';

class TaskActivityRecords extends Table {
  IntColumn get taskActivityRecordId => integer().nullable().autoIncrement()();

  TextColumn get drinkType => text()();

  IntColumn get quantity => integer()();

  IntColumn get userAccountId =>
      integer().references(UserAccounts, #userAccountId)();

  DateTimeColumn get createdTime => dateTime().nullable()();

  DateTimeColumn get lastUpdatedTime => dateTime().nullable()();
}
