import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_edit_goal_modal_cubit.freezed.dart';
part 'tracker_edit_goal_modal_state.dart';

class TrackerEditGoalModalCubit extends BaseModalCubit<TrackerEditGoalModalState> {
  TrackerEditGoalModalCubit({required super.context})
      : super(initialState: TrackerEditGoalModalState.initial());

  @override
  openModal() {
    emit(state.copyWith(modalStatus: BooleanStatus.active));
  }

  @override
  closeModal() {
    emit(state.copyWith(modalStatus: BooleanStatus.closed));
  }
}
