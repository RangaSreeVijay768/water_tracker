import 'dart:math';

import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_plan_routine/tracker_delete_plan_routine_cubit.dart';

class TrackerDeletePlanRoutineController
    extends BaseController<TrackerDeletePlanRoutineCubit> {
  int? random;

  TrackerDeletePlanRoutineController() {
    random = Random.secure().nextInt(1000);
  }

// createPlanRoutine(PlanRoutine planRoutine)
}
