part of 'tracker_drink_set_sleep_cycle_step_cubit.dart';

@freezed
class TrackerDrinkSetSleepCycleStepState
    with _$TrackerDrinkSetSleepCycleStepState {
  const factory TrackerDrinkSetSleepCycleStepState.initial(
      {required TimeOfDay selectedSleepTime,
      required TimeOfDay selectedWakeUpTime}) = _Initial;
}
