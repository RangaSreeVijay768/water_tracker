import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/drink_type.dart';

part 'tracker_select_drink_add_reminder_state.dart';
part 'tracker_select_drink_add_reminder_cubit.freezed.dart';

class TrackerSelectDrinkAddReminderCubit extends Cubit<TrackerSelectDrinkAddReminderState> {
  TrackerSelectDrinkAddReminderCubit() : super(TrackerSelectDrinkAddReminderState.initial(
      drinkTypes: DrinkType.availableDrinkTypes));

  selectDrinkType(DrinkType drinkType) {
    emit(state.copyWith(selectedDrinkType: drinkType));
  }
}
