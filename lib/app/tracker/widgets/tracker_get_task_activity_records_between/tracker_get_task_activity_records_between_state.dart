part of 'tracker_get_task_activity_records_between_cubit.dart';

@freezed
class TrackerGetTaskActivityRecordsBetweenState
    with _$TrackerGetTaskActivityRecordsBetweenState {
  const factory TrackerGetTaskActivityRecordsBetweenState.initial(
      {required DateTime startTime,
      required DateTime endTime,
      @Default([]) List<TaskActivityRecord> taskActivityRecords}) = _Initial;
}
