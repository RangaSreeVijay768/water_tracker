import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/modals/base_modal/base_modal_cubit.dart';

part 'tracker_half_goal_acheived_modal_state.dart';

part 'tracker_half_goal_acheived_modal_cubit.freezed.dart';

class TrackerHalfGoalAcheivedModalCubit
    extends BaseModalCubit<TrackerHalfGoalAcheivedModalState> {
  TrackerHalfGoalAcheivedModalCubit({required super.context})
      : super(initialState: TrackerHalfGoalAcheivedModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    emit(state.copyWith(openModal: true));
  }
}
