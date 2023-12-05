import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_plan_routine/tracker_create_plan_routine_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_plan_routine/tracker_create_plan_routine_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerCreatePlanRoutine extends BaseStatelessWidget<
    TrackerCreatePlanRoutineController, TrackerCreatePlanRoutineCubit> {
  TrackerCreatePlanRoutine(
      {Key? key, this.onPlanRoutineCreated, super.controller})
      : super(key: key);

  Function(PlanRoutine)? onPlanRoutineCreated;

  @override
  Widget build(BuildContext context) {
    initializeController(context);
    return BlocProvider<TrackerCreatePlanRoutineCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerCreatePlanRoutineCubit,
          TrackerCreatePlanRoutineState>(
        listener: (context, state) {
          if (state.apiStatus == ApiStateStatus.created &&
              onPlanRoutineCreated != null) {
            onPlanRoutineCreated!(state.planRoutine!);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  TrackerCreatePlanRoutineCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreatePlanRoutineCubit cubit =
    TrackerCreatePlanRoutineCubit(context: context);
    controller?.childContext = context;
    return cubit;
  }
}
