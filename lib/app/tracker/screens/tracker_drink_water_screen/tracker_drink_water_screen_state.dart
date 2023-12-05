import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/page_status.dart';
import 'package:beebloom_water_tracker/app/core/widgets/core_counter_timer/core_counter_timer_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_drink_water_screen_state.freezed.dart';

@freezed
class TrackerDrinkWaterScreenState with _$TrackerDrinkWaterScreenState {
  const factory TrackerDrinkWaterScreenState.initial({
          @Default(PageStatus.loaded) PageStatus pageStatus,
          DateTime? currentTime,
          DateTime? todaysStartTime,
          DateTime? todaysEndTime,
          DateTime? historyStartTime,
          DateTime? historyEndTime,
          TaskActivityGoal? taskActivityGoal,
          CoreCounterTimerState? coreCounterTimerState,
          DrinkType? selectedDrinkType,
          @Default(0) int count,
          List<PlanRoutine>? planRoutines,
          UserTaskActivityGoal? userTaskActivityGoal,
          @Default(false) bool isHalfGoalReached,
          @Default(false) bool isGoalReached,
          @Default(false) bool showingNativeAd,
          @Default(false) bool showingNotification,
          @Default(false) bool isGoalAchievedModalShown}) =
      _TrackerDrinkWaterScreenStateInitial;

  const TrackerDrinkWaterScreenState._();
}
