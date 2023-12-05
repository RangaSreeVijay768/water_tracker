part of 'trackers_select_drink_type_cubit.dart';

@freezed
class TrackersSelectDrinkTypeState with _$TrackersSelectDrinkTypeState {
  const factory TrackersSelectDrinkTypeState.initial(
      {required List<DrinkType> drinkTypes,
        TrackerDrinkWaterScreenState? trackerDrinkWaterScreenState,
      DrinkType? selectedDrinkType}) = _Initial;
}
