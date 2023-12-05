import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';

class TaskActivityUtils {
  static UserTaskActivityGoal createUserTaskActivityGoalObject(
      TaskActivityGoal taskActivityGoal, DateTime dateTime) {
    DateTime startTime = AppDateTimeUtils.getStartTimeOfDateTime(dateTime);
    DateTime endTime = AppDateTimeUtils.getEndTimeOfDateTime(dateTime);

    return UserTaskActivityGoal(
        taskActivityGoalId: taskActivityGoal.taskActivityGoalId!,
        currentGoalValue: 0,
        targetGoalValue: taskActivityGoal.goalValue,
        normalizedCurrentGoalValue: 0,
        normalizedTargetGoalValue: 100,
        startTime: startTime,
        endTime: endTime,
        status: BooleanStatus.active);
  }
}
