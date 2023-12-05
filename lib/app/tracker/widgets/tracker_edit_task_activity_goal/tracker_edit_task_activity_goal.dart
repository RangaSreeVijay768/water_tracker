import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_task_activity_goal/tracker_edit_task_activity_goal_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_task_activity_goal/tracker_edit_task_activity_goal_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerEditTaskActivityGoal extends BaseStatelessWidget<
    TrackersEditTaskActivityGoalController, TrackerEditTaskActivityGoalCubit> {
  const TrackerEditTaskActivityGoal({super.key, super.controller}) ;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerEditTaskActivityGoalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocBuilder<TrackerEditTaskActivityGoalCubit, TrackerEditTaskActivityGoalState>(
        builder: (context, state) {
          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  TrackerEditTaskActivityGoalCubit createCubitAndAssignToController(BuildContext context) {
    TrackerEditTaskActivityGoalCubit cubit = TrackerEditTaskActivityGoalCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
