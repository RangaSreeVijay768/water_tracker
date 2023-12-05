part of 'tracker_drink_schedule_drink_step_cubit.dart';

@freezed
class TrackerDrinkScheduleDrinkStepState
    with _$TrackerDrinkScheduleDrinkStepState {
  const factory TrackerDrinkScheduleDrinkStepState.initial(
      {required Map<DrinkType, int> drinkTypeCountMap,
      required DateTime startTime,
      required DateTime endTime,
          required Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap, List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
      List<GetDrinkWaterPlanExecutionTimesResponse>?
          drinkWaterPlanExecutionTimes}) = _Initial;
}
