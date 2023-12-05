part of 'tracker_task_activity_records_between_modal_cubit.dart';

@freezed
class TrackerTaskActivityRecordsBetweenModalState
    with _$TrackerTaskActivityRecordsBetweenModalState {
  const factory TrackerTaskActivityRecordsBetweenModalState.initial(
      {required DateTime startTime,
      required DateTime endTime,
      required ModalStatus modalStatus}) = _Initial;
}
