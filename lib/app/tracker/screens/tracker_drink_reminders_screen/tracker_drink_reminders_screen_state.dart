part of 'tracker_drink_reminders_screen_cubit.dart';

@freezed
class TrackerDrinkRemindersScreenState with _$TrackerDrinkRemindersScreenState {
  const factory TrackerDrinkRemindersScreenState.initial(
          {
            @Default(PageStatus.loaded) PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState
          }) =
      _Initial;
}
