import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_get_task_activity_records_between_cubit.freezed.dart';
part 'tracker_get_task_activity_records_between_state.dart';

class TrackerGetTaskActivityRecordsBetweenCubit
    extends Cubit<TrackerGetTaskActivityRecordsBetweenState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerGetTaskActivityRecordsBetweenCubit(
      DateTime startTime, DateTime endTime)
      : super(TrackerGetTaskActivityRecordsBetweenState.initial(
            startTime: startTime, endTime: endTime)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getTaskActivityRecords(startTime, endTime);
  }

  getTaskActivityRecords(DateTime startTime, DateTime endTime) async {
    List<TaskActivityRecord> taskActivityRecords = await taskActivitiesService
        .getTaskActivityRecordsBetween(startTime, endTime);
    emit(state.copyWith(taskActivityRecords: taskActivityRecords));
  }
}
