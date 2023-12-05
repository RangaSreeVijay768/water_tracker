import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_edit_task_activity_goal_state.dart';

part 'tracker_edit_task_activity_goal_cubit.freezed.dart';

class TrackerEditTaskActivityGoalCubit
    extends Cubit<TrackerEditTaskActivityGoalState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerEditTaskActivityGoalCubit()
      : super(const TrackerEditTaskActivityGoalState.initial(
            status: ApiStateStatus.initial)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
  }

  Future<TaskActivityGoal> updateTaskActivityGoal(
      TaskActivityGoal taskActivityGoal) async {
    await taskActivitiesService.updateTaskActivityGoal(taskActivityGoal);
    emit(state.copyWith(
        taskActivityGoal: taskActivityGoal, status: ApiStateStatus.completed));
    return taskActivityGoal;
  }
}
