import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_task_activity_record/tracker_create_task_activity_record_cubit.dart';

class TrackerCreateTaskActivityRecordController
    extends BaseController<TrackerCreateTaskActivityRecordCubit> {
  setDrinkType(DrinkType drinkType) {
    getChildCubit().setDrinkType(drinkType: drinkType);
  }
}
