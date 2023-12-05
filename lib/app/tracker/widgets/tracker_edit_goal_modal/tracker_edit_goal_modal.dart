import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_goal_modal/tracker_edit_goal_modal_content/tracker_edit_goal_modal_content.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_goal_modal/tracker_edit_goal_modal_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_goal_modal/tracker_edit_goal_modal_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';

class TrackerEditGoalModal extends BaseModalWidget<
    TrackerEditGoalModalController, TrackerEditGoalModalCubit, dynamic> {
  TaskActivityGoal taskActivityGoal;

  TrackerEditGoalModal(
      {required this.taskActivityGoal, super.key, super.onModalClosed});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerEditGoalModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerEditGoalModalCubit, TrackerEditGoalModalState>(
        listener: (context, state) {
          if (state.modalStatus == BooleanStatus.active) {}
        },
        builder: (context, state) {
          return SizedBox(
            width: 200,
            child: TextButton(
                style: TextButton.styleFrom(
                    padding: edge_insets_0,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
                onPressed: () {
                  FirebaseAnalytics.instance.logEvent(
                      name: "tracker_edit_goal_modal_edit_goal_button");
                  openModal(context: context, cubit: getCubit(context));
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Edit goal",
                    style: TextStyle(color: AppColors.textHeading),
                  ),
                )),
          );
        },
      ),
    );
  }

  @override
  TrackerEditGoalModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerEditGoalModalCubit trackerEditGoalModalCubit =
        TrackerEditGoalModalCubit(context: context);
    controller?.cubit = trackerEditGoalModalCubit;
    return trackerEditGoalModalCubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerEditGoalModalContent(
      taskActivityGoal: taskActivityGoal,
    );
  }
}
