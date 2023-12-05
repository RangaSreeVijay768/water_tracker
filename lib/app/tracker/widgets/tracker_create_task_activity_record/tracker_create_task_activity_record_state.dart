part of 'tracker_create_task_activity_record_cubit.dart';

@freezed
class TrackerCreateTaskActivityRecordState
    with _$TrackerCreateTaskActivityRecordState {
  const factory TrackerCreateTaskActivityRecordState.initial({
    @Default("WATER") String drinkType,
  }) = _Initial;
}
