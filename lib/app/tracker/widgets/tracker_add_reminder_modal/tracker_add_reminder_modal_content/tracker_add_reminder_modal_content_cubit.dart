
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/drink_type.dart';

part 'tracker_add_reminder_modal_content_cubit.freezed.dart';

part 'tracker_add_reminder_modal_content_state.dart';

class TrackerAddReminderModalContentCubit
    extends Cubit<TrackerAddReminderModalContentState> {
  TrackerAddReminderModalContentCubit(
      {DrinkType? drinkType, TimeOfDay? timeOfDay})
      : super(TrackerAddReminderModalContentState.initial(
            drinkTypes: DrinkType.availableDrinkTypes,
            selectedDrinkType: drinkType ?? DrinkType.availableDrinkTypes[0],
            selectedTime: timeOfDay ?? TimeOfDay.now()));

  selectDrinkType(DrinkType drinkType) {
    emit(state.copyWith(selectedDrinkType: drinkType));
  }

  selectTime(TimeOfDay dateTime) {
    emit(state.copyWith(selectedTime: dateTime));
  }

  updateIsButtonLoading(bool isButtonLoading) {
    emit(state.copyWith(buttonStatus: isButtonLoading));
  }
}
