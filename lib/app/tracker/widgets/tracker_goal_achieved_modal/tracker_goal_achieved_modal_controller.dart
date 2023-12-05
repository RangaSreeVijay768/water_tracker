import 'package:beebloom_water_tracker/app/core/controllers/base_modal_controller.dart';

import '/app/core/controllers/base_controller.dart';
import 'tracker_goal_achieved_modal_cubit.dart';

class TrackerGoalAchievedModalController
    extends BaseModalController<TrackerGoalAchievedModalCubit> {

  openModal(){
    getChildCubit().openModal();
  }
}
