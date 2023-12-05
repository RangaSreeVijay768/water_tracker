import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/models/group_by_string_count.dart';
import 'package:beebloom_water_tracker/app/core/models/local_date_aggregate_sum.dart';
import 'package:beebloom_water_tracker/app/daos/task_activity_goal_dao.dart';
import 'package:beebloom_water_tracker/app/daos/task_activity_record_dao.dart';
import 'package:beebloom_water_tracker/app/daos/user_task_activity_goals_dao.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/utils/task_activity_utils.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@singleton
class TaskActivitiesService {
  final TaskActivityRecordsDao taskActivityRecordsDao;
  final TaskActivityGoalsDao taskActivityGoalsDao;
  final UserTaskActivityGoalsDao userTaskActivityGoalsDao;

  const TaskActivitiesService({
    required this.taskActivityRecordsDao,
    required this.taskActivityGoalsDao,
    required this.userTaskActivityGoalsDao,
  });

  Future<int> saveTaskActivityRecord(TaskActivityRecord taskActivityRecord) {
    return taskActivityRecordsDao.saveTaskActivityRecord(taskActivityRecord);
  }

  Future<int> updateTaskActivityGoal(TaskActivityGoal taskActivityGoal) {
    return taskActivityGoalsDao.updateTaskActivityGoal(taskActivityGoal);
  }

  Future<TaskActivityGoal> getTaskActivityGoal(int taskActivityGoalId) {
    return taskActivityGoalsDao.getTaskActivityGoal(taskActivityGoalId);
  }

  Future<List<TaskActivityRecord>> getTaskActivityRecordsBetween(
      DateTime startTime, DateTime endTime) {
    return taskActivityRecordsDao.getTaskActivityRecordsBetween(
        startTime, endTime);
  }

  Future<List<LocalDateAggregateSum>> getWaterAggregateSumGroupByDate(
      DateTime startTime, DateTime endTime, UserAccount userAccount) {
    return taskActivityRecordsDao.getWaterAggregateSumGroupByDate(
        startTime, endTime, userAccount);
  }

  Future<int?> getTaskActivityRecordQuantitySumBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) {
    return taskActivityRecordsDao.getTaskActivityRecordQuantitySumBetween(
        userAccount, startTime, endTime);
  }

  Future<List<GroupByStringCount>> getWaterAggregateSumGroupByWaterType(
      UserAccount userAccount, DateTime startTime, DateTime endTime) {
    return taskActivityRecordsDao.getWaterAggregateSumGroupByWaterType(
        userAccount, startTime, endTime);
  }

  Future<double?> getTaskActivityRecordQuantityAverageBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    return taskActivityRecordsDao.getTaskActivityRecordQuantityAverageBetween(
        userAccount, startTime, endTime);
  }

  Future<List<TaskActivityGoal>> getTaskActivityGoalByUserAccountAndGoalType(
      UserAccount userAccount, GoalType goalType, BooleanStatus status) {
    return taskActivityGoalsDao.getTaskActivityGoalByUserAccountAndGoalType(
        userAccount, goalType, status);
  }

  Future<int> saveTaskActivityGoal(TaskActivityGoal taskActivityGoal) {
    return taskActivityGoalsDao.saveTaskActivityGoal(taskActivityGoal);
  }

  Future<double> getRecommendedGoal(double weight) {
    double weightInPounds = weight / 0.453592;
    double waterInOunces = weightInPounds * 0.6666;
    double waterInMl = waterInOunces * 29.5732;

    return Future.value(waterInMl);
  }

  Future<int> saveUserTaskActivityGoal(
      UserTaskActivityGoal userTaskActivityGoal) {
    return userTaskActivityGoalsDao
        .saveUserTaskActivityGoal(userTaskActivityGoal);
  }

  Future<UserTaskActivityGoal?> getUserTaskActivityGoal(
      int userTaskActivityGoalId) {
    return userTaskActivityGoalsDao
        .getUserTaskActivityGoal(userTaskActivityGoalId);
  }

  Future<UserTaskActivityGoal> getOrCreateUserTaskActivityGoalForDate(
      TaskActivityGoal taskActivityGoal, DateTime dateTime) async {
    DateTime startTime = AppDateTimeUtils.getStartTimeOfDateTime(dateTime);
    DateTime endTime = AppDateTimeUtils.getEndTimeOfDateTime(dateTime);

    List<UserTaskActivityGoal> taskActivityGoals =
        await userTaskActivityGoalsDao.getUserTaskActivityGoalBetween(
            startTime, endTime, taskActivityGoal);
    logger.d(taskActivityGoals);
    if (taskActivityGoals.isNotEmpty) {
      return Future.value(taskActivityGoals.first);
    } else {
      UserTaskActivityGoal userTaskActivityGoal =
          TaskActivityUtils.createUserTaskActivityGoalObject(
              taskActivityGoal, dateTime);
      int userTaskActivityGoalId = await userTaskActivityGoalsDao
          .saveUserTaskActivityGoal(userTaskActivityGoal);
      userTaskActivityGoal=userTaskActivityGoal.copyWith(userTaskActivityGoalId: Value(userTaskActivityGoalId));
      return Future.value(userTaskActivityGoal);
    }
  }
}
