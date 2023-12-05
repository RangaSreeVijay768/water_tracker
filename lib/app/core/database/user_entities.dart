import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:drift/drift.dart';

class UserAccounts extends Table {
  IntColumn get userAccountId => integer().nullable().autoIncrement()();

  TextColumn get displayName => text().nullable()();

  RealColumn get weight => real().nullable()();

  TextColumn get onboardingStatus => textEnum<BooleanStatus>().nullable()();

  DateTimeColumn get dateOfBirth => dateTime().nullable()();

  DateTimeColumn get sleepTime => dateTime().nullable()();

  DateTimeColumn get wakeUpTime => dateTime().nullable()();

  DateTimeColumn get createdTime => dateTime()();

  DateTimeColumn get lastUpdatedTime => dateTime()();
}
