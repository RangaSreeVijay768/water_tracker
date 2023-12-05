import '../../../core/controllers/base_modal_controller.dart';
import 'tracker_half_goal_acheived_modal_cubit.dart';

class TrackerHalfGoalAcheivedModalController
    extends BaseModalController<TrackerHalfGoalAcheivedModalCubit> {

  openModal(){
    getChildCubit().openModal();
  }

}
