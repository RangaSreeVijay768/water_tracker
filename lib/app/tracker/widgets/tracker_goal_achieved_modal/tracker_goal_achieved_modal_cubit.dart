import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_goal_achieved_modal_cubit.freezed.dart';

part 'tracker_goal_achieved_modal_state.dart';

class TrackerGoalAchievedModalCubit
    extends BaseModalCubit<TrackerGoalAchievedModalState> {
  TrackerGoalAchievedModalCubit({required super.context})
      : super(initialState: TrackerGoalAchievedModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    emit(state.copyWith(openModal: true));
  }


}
