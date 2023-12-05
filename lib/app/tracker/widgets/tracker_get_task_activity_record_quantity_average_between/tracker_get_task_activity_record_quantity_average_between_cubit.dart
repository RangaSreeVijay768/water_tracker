import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

//
part 'tracker_get_task_activity_record_quantity_average_between_cubit.freezed.dart';
part 'tracker_get_task_activity_record_quantity_average_between_state.dart';

class TrackerGetTaskActivityRecordQuantityAverageBetweenCubit
    extends Cubit<TrackerGetTaskActivityRecordQuantityAverageBetweenState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerGetTaskActivityRecordQuantityAverageBetweenCubit(
      UserAccount userAccount, DateTime startTime, DateTime endTime)
      : super(TrackerGetTaskActivityRecordQuantityAverageBetweenState.initial(
            userAccount: userAccount,
            startTime: startTime,
            endTime: endTime,
            status: ApiStateStatus.initial)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getTaskActivityRecordQuantityAverageBetween(
        userAccount, startTime, endTime);
  }

  getTaskActivityRecordQuantityAverageBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    double? average =
        await taskActivitiesService.getTaskActivityRecordQuantityAverageBetween(
            userAccount, startTime, endTime);
    emit(state.copyWith(
        startTime: startTime,
        endTime: endTime,
        average: average ?? 0,
        status: ApiStateStatus.loaded));
  }
}
