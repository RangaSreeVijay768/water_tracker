import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trackers_select_drink_type_state.dart';

part 'trackers_select_drink_type_cubit.freezed.dart';

class TrackersSelectDrinkTypeCubit extends Cubit<TrackersSelectDrinkTypeState> {
  TrackersSelectDrinkTypeCubit()
      : super(TrackersSelectDrinkTypeState.initial(
    selectedDrinkType: DrinkType.availableDrinkTypes[0],
            drinkTypes: DrinkType.availableDrinkTypes));

  selectDrinkType(DrinkType drinkType) {
    print("drink t");
    print(drinkType);
    emit(state.copyWith(selectedDrinkType: drinkType));
  }
}
