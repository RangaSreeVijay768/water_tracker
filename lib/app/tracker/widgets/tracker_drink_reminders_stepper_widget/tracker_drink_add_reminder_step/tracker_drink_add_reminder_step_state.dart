part of 'tracker_drink_add_reminder_step_cubit.dart';

@freezed
class TrackerDrinkAddReminderStepState with _$TrackerDrinkAddReminderStepState {
  const factory TrackerDrinkAddReminderStepState.initial(
      {required List<DrinkType> drinkTypes,
      required Map<DrinkType, int> drinkTypeCountMap}) = _Initial;
}
