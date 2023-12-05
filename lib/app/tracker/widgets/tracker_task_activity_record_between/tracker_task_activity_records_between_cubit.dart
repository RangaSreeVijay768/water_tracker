import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'tracker_task_activity_records_between_state.dart';

class TrackerTaskActivityRecordsBetweenCubit
    extends Cubit<TrackerTaskActivityRecordsBetweenState> {
  TaskActivitiesService? taskActivitiesService;

  TrackerTaskActivityRecordsBetweenCubit(DateTime startTime, DateTime endTime)
      : super(TrackerTaskActivityRecordsBetweenInitialState(
            startTime: startTime, endTime: endTime, taskActivityRecords: const [])) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getTaskActivityRecords();
  }

  getTaskActivityRecords() async {
    List<TaskActivityRecord> taskActivityRecords = await taskActivitiesService!
        .getTaskActivityRecordsBetween(
            AppDateTimeUtils.getStartTimeOfDateTime(DateTime.now()),
            AppDateTimeUtils.getEndTimeOfDateTime(DateTime.now()));
    addTaskActivityRecords(taskActivityRecords);
  }

  addTaskActivityRecords(List<TaskActivityRecord> taskActivityRecords) =>
      emit(TrackerTaskActivityRecordsBetweenLoadedState(
          startTime: state.startTime,
          endTime: state.endTime,
          taskActivityRecords: taskActivityRecords));
}
