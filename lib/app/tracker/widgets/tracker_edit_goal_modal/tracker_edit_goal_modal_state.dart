part of 'tracker_edit_goal_modal_cubit.dart';

@freezed
class TrackerEditGoalModalState with _$TrackerEditGoalModalState {
  const factory TrackerEditGoalModalState.initial(
      {@Default(BooleanStatus.closed) BooleanStatus modalStatus,
       TaskActivityGoal? taskActivityGoal}) = _Initial;
}
