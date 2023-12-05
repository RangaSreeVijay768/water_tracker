import 'dart:math';

import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_plan_routine/tracker_create_plan_routine_cubit.dart';

class TrackerCreatePlanRoutineController
    extends BaseController<TrackerCreatePlanRoutineCubit> {

  late int random;

  TrackerCreatePlanRoutineController() {
    random = Random.secure().nextInt(10000);
  }
}
