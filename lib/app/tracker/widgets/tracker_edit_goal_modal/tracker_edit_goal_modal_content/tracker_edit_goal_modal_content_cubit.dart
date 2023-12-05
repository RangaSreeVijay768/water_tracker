import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_edit_goal_modal_content_cubit.freezed.dart';
part 'tracker_edit_goal_modal_content_state.dart';

class TrackerEditGoalModalContentCubit
    extends BaseCubit<TrackerEditGoalModalContentState> {
  TaskActivityGoal taskActivityGoal;

  late TaskActivitiesService taskActivitiesService;

  TrackerEditGoalModalContentCubit(
      {required super.context, required this.taskActivityGoal})
      : super(
            initialState: TrackerEditGoalModalContentState.initial(
                taskActivityGoal: taskActivityGoal,
                goal: taskActivityGoal.goalValue)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getRecommendedGoal();
  }

  getRecommendedGoal() async {
    double recommendedGoal = await taskActivitiesService
        .getRecommendedGoal(getUserAccount().weight!);
    emit(state.copyWith(
        recommendedGoal: recommendedGoal, goal: taskActivityGoal.goalValue));
  }

  updateGoal(
      {double? goal,  TaskActivityGoal? taskActivityGoal}) {
    emit(state.copyWith(goal: goal, taskActivityGoal: taskActivityGoal??state.taskActivityGoal));
  }
}
