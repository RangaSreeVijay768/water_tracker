import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trackers_change_drink_type_modal_cubit.freezed.dart';
part 'trackers_change_drink_type_modal_state.dart';

class TrackersChangeDrinkTypeModalCubit
    extends BaseModalCubit<TrackersChangeDrinkTypeModalState> {
  TrackersChangeDrinkTypeModalCubit(
      {DrinkType? drinkType, required super.context})
      : super(
            initialState: TrackersChangeDrinkTypeModalState.initial(
                drinkType: drinkType));

  @override
  void closeModal() {}

  @override
  void openModal() {}
}
