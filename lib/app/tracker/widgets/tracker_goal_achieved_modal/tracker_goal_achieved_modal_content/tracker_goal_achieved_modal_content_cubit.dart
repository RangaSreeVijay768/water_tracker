import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';

part 'tracker_goal_achieved_modal_content_state.dart';

part 'tracker_goal_achieved_modal_content_cubit.freezed.dart';

class TrackerGoalAchievedModalContentCubit
    extends BaseCubit<TrackerGoalAchievedModalContentState> {
  TrackerGoalAchievedModalContentCubit({required super.context})
      : super(initialState: TrackerGoalAchievedModalContentState.initial());
}
