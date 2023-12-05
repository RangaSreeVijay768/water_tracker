part of 'tracker_add_reminder_modal_content_cubit.dart';

@freezed
class TrackerAddReminderModalContentState
    with _$TrackerAddReminderModalContentState {
  const factory TrackerAddReminderModalContentState.initial(
      {required List<DrinkType> drinkTypes,
      required TimeOfDay selectedTime,
      required DrinkType selectedDrinkType,
      @Default(false) bool buttonStatus}) = _Initial;
}

