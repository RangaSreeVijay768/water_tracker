import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/user_entities.dart';
import 'package:drift/drift.dart';

class UserStreaks extends Table {
  IntColumn get userStreakId => integer().nullable().autoIncrement()();

  IntColumn get userAccountId =>
      integer().references(UserAccounts, #userAccountId)();

  DateTimeColumn get startTime => dateTime().nullable()();

  DateTimeColumn get endTime => dateTime().nullable()();

  DateTimeColumn get lastStreakUpdatedTime => dateTime().nullable()();

  TextColumn get status => textEnum<BooleanStatus>()();

  IntColumn get totalNumberOfDays => integer()();

  DateTimeColumn get createdTime => dateTime().nullable()();

  DateTimeColumn get lastUpdatedTime => dateTime().nullable()();
}
