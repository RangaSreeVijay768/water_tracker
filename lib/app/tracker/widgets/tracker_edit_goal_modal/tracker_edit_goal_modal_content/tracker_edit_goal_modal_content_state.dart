part of 'tracker_edit_goal_modal_content_cubit.dart';

@freezed
class TrackerEditGoalModalContentState with _$TrackerEditGoalModalContentState {
  const factory TrackerEditGoalModalContentState.initial(
      {required TaskActivityGoal taskActivityGoal,
      @Default(2500) double recommendedGoal,
      double? goal}) = _Initial;
}
