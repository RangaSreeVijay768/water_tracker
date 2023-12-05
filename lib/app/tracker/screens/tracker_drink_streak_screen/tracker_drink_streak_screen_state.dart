part of 'tracker_drink_streak_screen_cubit.dart';

@freezed
class TrackerDrinkStreakScreenState with _$TrackerDrinkStreakScreenState {
  const factory TrackerDrinkStreakScreenState.initial({
    GetActiveUserStreakForUserAccountResponse? getActiveUserStreakForUserAccountResponse,
    @Default(BooleanStatus.initial) BooleanStatus getActiveUserStreakForUserAccountStatus,
    DateTime? todaysStartTime,
    DateTime? todaysEndTime,
    @Default(PageStatus.loaded) PageStatus pageStatus,
  }) = _Initial;
}
