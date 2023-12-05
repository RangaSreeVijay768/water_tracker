part of 'tracker_edit_task_activity_goal_cubit.dart';

@freezed
class TrackerEditTaskActivityGoalState with _$TrackerEditTaskActivityGoalState {
  const factory TrackerEditTaskActivityGoalState.initial(
      {required ApiStateStatus status,
      TaskActivityGoal? taskActivityGoal}) = _Initial;
}
