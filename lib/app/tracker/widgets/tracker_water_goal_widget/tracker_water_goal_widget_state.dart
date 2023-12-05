part of 'tracker_water_goal_widget_cubit.dart';

@freezed
class TrackerWaterGoalWidgetState with _$TrackerWaterGoalWidgetState {
  const factory TrackerWaterGoalWidgetState.initial(
      {required DateTime startTime, required DateTime endTime,
        @Default(0) int currentQuantity,
      @Default(0) double goalQuantity}) = _Initial;
}
