import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/modals/base_modal/base_modal_widget.dart';
import 'tracker_half_goal_acheived_modal_content/tracker_half_goal_acheived_modal_content.dart';
import 'tracker_half_goal_acheived_modal_controller.dart';
import 'tracker_half_goal_acheived_modal_cubit.dart';
import 'tracker_half_goal_acheived_modal_data.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerHalfGoalAcheivedModal
    extends BaseModalWidget<
        TrackerHalfGoalAcheivedModalController,
        TrackerHalfGoalAcheivedModalCubit,
        TrackerHalfGoalAcheivedModalData> {
  TrackerHalfGoalAcheivedModal(
      {Key? key, super.controller, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerHalfGoalAcheivedModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerHalfGoalAcheivedModalCubit,
          TrackerHalfGoalAcheivedModalState>(
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
  TrackerHalfGoalAcheivedModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerHalfGoalAcheivedModalCubit cubit = TrackerHalfGoalAcheivedModalCubit(
        context: context);
    controller?.cubit = cubit;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerHalfGoalAcheivedModalContent();
  }
}
