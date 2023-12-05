part of 'tracker_task_activity_records_between_cubit.dart';

abstract class TrackerTaskActivityRecordsBetweenState extends Equatable {
  final DateTime startTime;
  final DateTime endTime;

  final List<TaskActivityRecord> taskActivityRecords;

  const TrackerTaskActivityRecordsBetweenState(
      {required this.startTime,
      required this.endTime,
      required this.taskActivityRecords});

  @override
  List<Object> get props => [startTime, endTime, taskActivityRecords];
}

class TrackerTaskActivityRecordsBetweenInitialState
    extends TrackerTaskActivityRecordsBetweenState {
  const TrackerTaskActivityRecordsBetweenInitialState(
      {required super.startTime,
      required super.endTime,
      required super.taskActivityRecords});

  TrackerTaskActivityRecordsBetweenInitialState copyWith({
    DateTime? startTime,
    DateTime? endTime,
    List<TaskActivityRecord>? taskActivityRecords,
  }) {
    return TrackerTaskActivityRecordsBetweenInitialState(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      taskActivityRecords: taskActivityRecords ?? this.taskActivityRecords,
    );
  }
}

class TrackerTaskActivityRecordsBetweenLoadedState
    extends TrackerTaskActivityRecordsBetweenState {
  const TrackerTaskActivityRecordsBetweenLoadedState(
      {required super.startTime,
      required super.endTime,
      required super.taskActivityRecords});

  TrackerTaskActivityRecordsBetweenLoadedState copyWith({
    DateTime? startTime,
    DateTime? endTime,
    List<TaskActivityRecord>? taskActivityRecords,
  }) {
    return TrackerTaskActivityRecordsBetweenLoadedState(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      taskActivityRecords: taskActivityRecords ?? this.taskActivityRecords,
    );
  }
}
