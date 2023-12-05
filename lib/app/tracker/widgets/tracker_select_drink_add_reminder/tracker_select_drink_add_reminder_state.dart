part of 'tracker_select_drink_add_reminder_cubit.dart';

@freezed
class TrackerSelectDrinkAddReminderState
    with _$TrackerSelectDrinkAddReminderState {
  const factory TrackerSelectDrinkAddReminderState.initial(
      {required List<DrinkType> drinkTypes,
      DrinkType? selectedDrinkType}) = _Initial;
}
