import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_plan_routine/tracker_delete_plan_routine_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_plan_routine/tracker_delete_plan_routine_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerDeletePlanRoutine extends BaseStatelessWidget<
    TrackerDeletePlanRoutineController, TrackerDeletePlanRoutineCubit> {
  TrackerDeletePlanRoutine(
      {super.key, super.controller, this.onPlanRoutineDeleted});

  Function(PlanRoutine)? onPlanRoutineDeleted;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDeletePlanRoutineCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDeletePlanRoutineCubit,
          TrackerDeletePlanRoutineState>(
        listener: (context, state) {
          if (state.apiStatus == ApiStateStatus.completed) {
            if (onPlanRoutineDeleted != null) {
              onPlanRoutineDeleted!(state.planRoutine!);
            }
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
  TrackerDeletePlanRoutineCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDeletePlanRoutineCubit cubit = TrackerDeletePlanRoutineCubit();
    return cubit;
  }
}
