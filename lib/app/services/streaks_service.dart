import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/daos/user_streak_items_dao.dart';
import 'package:beebloom_water_tracker/app/daos/user_streaks_dao.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/utils/streak_utils.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@singleton
class StreaksService {
  UserStreakItemsDao userStreakItemsDao;
  UserStreaksDao userStreaksDao;

  StreaksService(this.userStreakItemsDao, this.userStreaksDao);

  Future<int> saveUserStreak(UserStreak userStreak) {
    return userStreaksDao.saveUserStreak(userStreak);
  }

  Future<void> updateUserStreak(UserStreak userStreak) {
    return userStreaksDao.updateUserStreak(userStreak);
  }

  Future<UserStreak> createDefaultUserStreak(UserAccount userAccount) async {
    UserStreak userStreak = StreakUtils.createDefaultUserStreak(userAccount);
    int userStreakId = await saveUserStreak(userStreak);
    userStreak = userStreak.copyWith(userStreakId: Value(userStreakId));
    return Future.value(userStreak);
  }

  Future<UserStreak> expireUserStreak(UserStreak userStreak) async {
    if (userStreak.status != BooleanStatus.completed) {
      userStreak = userStreak.copyWith(
          status: BooleanStatus.completed,
          endTime: Value(userStreak.lastStreakUpdatedTime!));
      await updateUserStreak(userStreak);
    }

    return userStreak;
  }

  Future<List<UserStreak>> getUserStreaksByUserAccountAndStatus(
      UserAccount userAccount,
      {BooleanStatus? status,
        int? offset,
        int? limit,
        String? columnName,
        String? columnOrder}) {
    return userStreaksDao.getUserStreaksByUserAccountAndStatus(userAccount,
        status: status,
        limit: limit,
        offset: offset,
        columnName: columnName,
        columnOrder: columnOrder);
  }

  Future<bool> isUserStreakActive(UserStreak userStreak, DateTime currentTime) {
    DateTime lastUpdatedTime = userStreak.lastStreakUpdatedTime!;
    DateTime lastUpdatedStartTime =
    AppDateTimeUtils.getStartTimeOfDateTime(lastUpdatedTime);
    DateTime currentTimeStartTime =
    AppDateTimeUtils.getStartTimeOfDateTime(currentTime);
    if (currentTimeStartTime.difference(lastUpdatedStartTime).inDays > 1) {
      return Future.value(false);
    }
    return Future.value(true);
  }

  Future<UserStreak?> getActiveUserStreakForUserAccount(
      UserAccount userAccount) async {
    List<UserStreak> userStreaks = await getUserStreaksByUserAccountAndStatus(
        userAccount,
        status: BooleanStatus.active);
    UserStreak? userStreak = null;
    DateTime currentTime = AppDateTimeUtils.getCurrentTimeOfDay();
    if (userStreaks.isNotEmpty) {
      userStreak = userStreaks.first;
      if (!(await isUserStreakActive(userStreak, currentTime))) {
        await expireUserStreak(userStreak);
        userStreak = null;
      }
    }
    return userStreak;
  }

  Future<UserStreak> getOrCreateActiveUserStreakForUserAccount(
      UserAccount userAccount) async {
    UserStreak? userStreak =
    await getActiveUserStreakForUserAccount(userAccount);
    if (userStreak == null) {
      userStreak = await createDefaultUserStreak(userAccount);
    }

    return Future.value(userStreak);
  }

  Future<int> saveUserStreakItem(UserStreakItem userStreakItem) {
    return userStreakItemsDao.saveUserStreakItem(userStreakItem);
  }

  Future<UserStreakItem?> getUserStreakItemByUserStreakAndDate(
      UserStreak userStreak, DateTime dateTime) async {
    return userStreakItemsDao.getUserStreakItemByUserStreakAndDate(
        userStreak, dateTime);
  }

  Future<void> addUserStreakItemIfNeeded(
      UserAccount userAccount, DateTime dateTime) async {
    DateTime startDateTime = AppDateTimeUtils.getStartTimeOfDateTime(dateTime);
    UserStreak userStreak =
    await getOrCreateActiveUserStreakForUserAccount(userAccount);

    UserStreakItem? userStreakItem =
    await getUserStreakItemByUserStreakAndDate(userStreak, startDateTime);
    if (userStreakItem == null) {
      addUserStreakItem(userAccount, dateTime);
    }
  }

  Future<void> addUserStreakItem(
      UserAccount userAccount, DateTime dateTime) async {
    DateTime startDateTime = AppDateTimeUtils.getStartTimeOfDateTime(dateTime);

    UserStreak userStreak =
    await getOrCreateActiveUserStreakForUserAccount(userAccount);
    DateTime streakStartDateTime =
    AppDateTimeUtils.getStartTimeOfDateTime(userStreak.startTime!);

    int streakDay = startDateTime.difference(streakStartDateTime).inDays + 1;
    userStreak = userStreak.copyWith(
        totalNumberOfDays: streakDay, lastStreakUpdatedTime: Value(dateTime));
    await updateUserStreak(userStreak);
    UserStreakItem userStreakItem =
    StreakUtils.createUserStreakItem(userStreak, streakDay, dateTime);

    await saveUserStreakItem(userStreakItem);
  }

  Future<List<UserStreakItem>> getUserStreakItemsByUserStreak(
      UserStreak userStreak,
      {int? offset,
        int? limit,
        String? columnName,
        String? columnOrder}) {
    return userStreakItemsDao.getUserStreakItemsByUserStreak(userStreak,
        offset: offset,
        limit: limit,
        columnName: columnName,
        columnOrder: columnOrder);
  }

  Future<List<UserStreakItem>> getUserStreakItemsByUserAccountBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) {
    return userStreakItemsDao.getUserStreakItemsByUserAccountBetween(
        userAccount, startTime, endTime);
  }
}

