import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/group_by_string_count.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';

// part 'tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';

class TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit
    extends Cubit<TrackerTaskActivityRecordsAggregateSumByDrinkTypeState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit(
      UserAccount userAccount, DateTime startTime, DateTime endTime)
      : super(TrackerTaskActivityRecordsAggregateSumByDrinkTypeState(
            userAccount: userAccount, startTime: startTime, endTime: endTime)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    loadTaskActivityRecordsAggregateSum(userAccount, startTime, endTime);
  }

  loadTaskActivityRecordsAggregateSum(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    List<GroupByStringCount> groupByStringsAndCount = await taskActivitiesService
        .getWaterAggregateSumGroupByWaterType(userAccount, startTime, endTime);
    emit(state.copyWith(
        groupByStringsAndCount: groupByStringsAndCount,
        startTime: startTime,
        endTime: endTime));
  }
}
