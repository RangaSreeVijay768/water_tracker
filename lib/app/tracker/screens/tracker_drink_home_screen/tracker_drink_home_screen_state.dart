part of 'tracker_drink_home_screen_cubit.dart';

@freezed
class TrackerDrinkHomeScreenState with _$TrackerDrinkHomeScreenState {
  const factory TrackerDrinkHomeScreenState.initial({
    @Default(PageStatus.loaded) PageStatus pageStatus,
    TrackerMainScreenCubit? trackerMainScreenCubit,
    TrackerMainScreenState? trackerMainScreenState,
    DateTime? todaysStartTime,
    DateTime? todaysEndTime,
}) = _Initial;
}
