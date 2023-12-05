part of 'tracker_time_filter_cubit.dart';

@freezed
class TrackerTimeFilterState with _$TrackerTimeFilterState {
  const factory TrackerTimeFilterState.initial(
      {required List<TimeFilter> timeFilters,
      required TimeFilter selectedTimeFilter}) = _Initial;
}
