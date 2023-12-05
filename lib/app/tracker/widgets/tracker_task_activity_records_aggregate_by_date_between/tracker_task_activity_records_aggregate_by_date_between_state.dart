part of 'tracker_task_activity_records_aggregate_by_date_between_cubit.dart';

@freezed
class TrackerTaskActivityRecordsAggregateByDateBetweenState
    with _$TrackerTaskActivityRecordsAggregateByDateBetweenState {
  const factory TrackerTaskActivityRecordsAggregateByDateBetweenState.initial(
      {required UserAccount userAccount,
      required DateTime startTime,
      required DateTime endTime,
      @Default([])
      List<LocalDateAggregateSum> localDateAggregateSums}) = _Initial;
}
