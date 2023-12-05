import 'package:beebloom_water_tracker/app/core/database/user_streaks.dart';
import 'package:drift/drift.dart';

class UserStreakItems extends Table {
  IntColumn get userStreakItemId => integer().nullable().autoIncrement()();

  IntColumn get userStreakId =>
      integer().references(UserStreaks, #userStreakId)();

  DateTimeColumn get userStreakDate => dateTime().nullable()();

  IntColumn get streakDay => integer().nullable()();

  DateTimeColumn get createdTime => dateTime().nullable()();

  DateTimeColumn get lastUpdatedTime => dateTime().nullable()();

}
