import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_half_goal_acheived_modal_content_state.dart';

part 'tracker_half_goal_acheived_modal_content_cubit.freezed.dart';

class TrackerHalfGoalAcheivedModalContentCubit
    extends BaseCubit<TrackerHalfGoalAcheivedModalContentState> {
  TrackerHalfGoalAcheivedModalContentCubit({required super.context})
      : super(initialState: TrackerHalfGoalAcheivedModalContentState.initial());
}
