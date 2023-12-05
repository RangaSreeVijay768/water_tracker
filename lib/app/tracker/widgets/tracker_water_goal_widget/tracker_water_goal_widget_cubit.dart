import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_water_goal_widget_cubit.freezed.dart';

part 'tracker_water_goal_widget_state.dart';

class TrackerWaterGoalWidgetCubit extends Cubit<TrackerWaterGoalWidgetState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerWaterGoalWidgetCubit(
      UserAccount userAccount, DateTime startTime, DateTime endTime)
      : super(TrackerWaterGoalWidgetState.initial(
            startTime: startTime, endTime: endTime)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getTaskActivityGoalByUserAccountAndGoalType(userAccount);
    getTaskActivityRecordQuantitySumBetween(userAccount, startTime, endTime);
  }

  getTaskActivityGoalByUserAccountAndGoalType(UserAccount userAccount) async {
    List<TaskActivityGoal> taskActivityGoals =
        await taskActivitiesService.getTaskActivityGoalByUserAccountAndGoalType(
            userAccount, GoalType.dailyDrinkingWater, BooleanStatus.active);
    if (taskActivityGoals.isNotEmpty) {
      TaskActivityGoal taskActivityGoal = taskActivityGoals.first;
      emit(state.copyWith(goalQuantity: taskActivityGoal.goalValue));
    } else {
      emit(state.copyWith(goalQuantity: 3500));
    }
  }

  Future<double> getTaskActivityRecordQuantitySumBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    int? todaysQuantity =
        await taskActivitiesService.getTaskActivityRecordQuantitySumBetween(
            userAccount, startTime, endTime);
    emit(state.copyWith(currentQuantity: todaysQuantity ?? 0));
    return Future.value(state.currentQuantity.toDouble());
  }


}
