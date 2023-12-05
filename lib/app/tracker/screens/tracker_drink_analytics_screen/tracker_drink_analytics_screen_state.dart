part of 'tracker_drink_analytics_screen_cubit.dart';

@freezed
class TrackerDrinkAnalyticsScreenState with _$TrackerDrinkAnalyticsScreenState {
  const factory TrackerDrinkAnalyticsScreenState.initial({
    @Default(false) bool isExpanded,
    DateTime? historyStartTime,
    DateTime? historyEndTime,
    @Default(PageStatus.loaded) PageStatus pageStatus,
    TrackerTaskActivityRecordsAggregateSumByDrinkTypeState? trackerTaskActivityRecordsAggregateSumByDrinkTypeState
}) = _Initial;
}
