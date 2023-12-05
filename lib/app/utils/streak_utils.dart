import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';

class StreakUtils {
  static UserStreak createDefaultUserStreak(UserAccount userAccount) {
    return UserStreak(
        userAccountId: userAccount.userAccountId!,
        status: BooleanStatus.active,
        startTime: AppDateTimeUtils.getCurrentTimeOfDay(),
        lastStreakUpdatedTime: AppDateTimeUtils.getCurrentTimeOfDay(),
        totalNumberOfDays: 1);
  }

  static UserStreakItem createUserStreakItem(
      UserStreak userStreak, int streakDay, DateTime dateTime) {
    return UserStreakItem(
        userStreakId: userStreak.userStreakId!,
        streakDay: streakDay,
        userStreakDate: dateTime);
  }
// static DateTime getStreakUpdatedTime
}
