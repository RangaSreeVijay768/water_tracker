import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_goal_achieved_modal/tracker_goal_achieved_modal_content/tracker_goal_achieved_modal_content.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_goal_achieved_modal/tracker_goal_achieved_modal_data.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tracker_goal_achieved_modal_controller.dart';
import 'tracker_goal_achieved_modal_cubit.dart';

class TrackerGoalAchievedModal extends BaseModalWidget<
    TrackerGoalAchievedModalController,
    TrackerGoalAchievedModalCubit,
    TrackerGoalAchievedModalData> {
  TrackerGoalAchievedModal({Key? key, super.controller,super.onModalClosed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGoalAchievedModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGoalAchievedModalCubit,
          TrackerGoalAchievedModalState>(
        listener: (context, state) {
          if (state.openModal) {
            openModal(context: context, cubit: getCubit(context));
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  TrackerGoalAchievedModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerGoalAchievedModalCubit cubit =
        TrackerGoalAchievedModalCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerGoalAchievedModalContent();
  }
}
