part of 'tracker_get_task_activity_record_quantity_average_between_cubit.dart';

@freezed
class TrackerGetTaskActivityRecordQuantityAverageBetweenState
    with _$TrackerGetTaskActivityRecordQuantityAverageBetweenState {
  const factory TrackerGetTaskActivityRecordQuantityAverageBetweenState.initial(
      {required UserAccount userAccount,
      required DateTime startTime,
      required DateTime endTime,
      required ApiStateStatus status,
      @Default(0) double average,
      }) = _Initial;
}
