import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/local_date_aggregate_sum.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_task_activity_records_aggregate_by_date_between_cubit.freezed.dart';
part 'tracker_task_activity_records_aggregate_by_date_between_state.dart';

class TrackerTaskActivityRecordsAggregateByDateBetweenCubit
    extends Cubit<TrackerTaskActivityRecordsAggregateByDateBetweenState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerTaskActivityRecordsAggregateByDateBetweenCubit(
      UserAccount userAccount, DateTime startTime, DateTime endTime)
      : super(TrackerTaskActivityRecordsAggregateByDateBetweenState.initial(
            userAccount: userAccount, startTime: startTime, endTime: endTime)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getTaskActivityRecordsAggregateByDateBetween(
        userAccount, startTime, endTime);
  }

  getTaskActivityRecordsAggregateByDateBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    List<LocalDateAggregateSum> locaDateAggregateSums = await taskActivitiesService
        .getWaterAggregateSumGroupByDate(startTime, endTime, userAccount);
    return emit(state.copyWith(localDateAggregateSums: locaDateAggregateSums));
  }
}
