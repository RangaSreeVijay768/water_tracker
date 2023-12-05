part of 'tracker_drink_reminders_stepper_widget_cubit.dart';

@freezed
class TrackerDrinkRemindersStepperWidgetState
    with _$TrackerDrinkRemindersStepperWidgetState {
  const factory TrackerDrinkRemindersStepperWidgetState.initial(
      {required BooleanStatus reminderCreationStatus, TrackerDrinkSetSleepCycleStepState? step1State,
      TrackerDrinkAddReminderStepState? step2State,
      TrackerDrinkScheduleDrinkStepState? step3State
      }) = _Initial;
}
