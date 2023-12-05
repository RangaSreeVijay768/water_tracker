import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_cubit.dart';
import 'package:get_it/get_it.dart';

class TrackerTaskActivityRecordsAggregateSumByDrinkTypeController
    extends BaseController<
        TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit> {
  late TaskActivitiesService taskActivitiesService;

  TrackerTaskActivityRecordsAggregateSumByDrinkTypeController() {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
  }
}
