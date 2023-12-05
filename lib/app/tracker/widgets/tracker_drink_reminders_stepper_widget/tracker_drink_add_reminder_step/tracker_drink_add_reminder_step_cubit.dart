import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_drink_add_reminder_step_cubit.freezed.dart';
part 'tracker_drink_add_reminder_step_state.dart';

class TrackerDrinkAddReminderStepCubit
    extends BaseCubit<TrackerDrinkAddReminderStepState> {
  TrackerDrinkAddReminderStepCubit({required super.context})
      : super(
            initialState: TrackerDrinkAddReminderStepState.initial(
                drinkTypes: DrinkType.configurableDrinkTypes,
                drinkTypeCountMap:
                    getDrinkTypesMap(DrinkType.configurableDrinkTypes)));

  static Map<DrinkType, int> getDrinkTypesMap(List<DrinkType> drinkTypes) {
    return Map.fromIterable(drinkTypes, value: (value) => 0);
  }

  addDrinkQuantity(DrinkType drinkType, int drinkQuantity) {
    Map<DrinkType, int> drinkTypeMap = Map.from(state.drinkTypeCountMap);
    drinkTypeMap[drinkType] = (drinkTypeMap[drinkType] ?? 0) + drinkQuantity;
    emit(state.copyWith(drinkTypeCountMap: drinkTypeMap));
  }
}
