import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_plan_routine/tracker_delete_plan_routine.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_plan_routine/tracker_delete_plan_routine_controller.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'tracker_reminders_plan_routine_details_controller.dart';
import 'tracker_reminders_plan_routine_details_cubit.dart';

class TrackerRemindersPlanRoutineDetails extends BaseStatelessWidget<
    TrackerRemindersPlanRoutineDetailsController,
    TrackerRemindersPlanRoutineDetailsCubit> {
  PlanRoutine planRoutine;

  Function(PlanRoutine)? onPlanRoutineDeleted;

  TrackerDeletePlanRoutineController trackerDeletePlanRoutineController =
      TrackerDeletePlanRoutineController();

  TrackerRemindersPlanRoutineDetails(
      {required this.planRoutine, Key? key,
      super.controller,
      this.onPlanRoutineDeleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerRemindersPlanRoutineDetailsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerRemindersPlanRoutineDetailsCubit,
          TrackerRemindersPlanRoutineDetailsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Wrap(

            children: [
              TrackerDeletePlanRoutine(
                controller: trackerDeletePlanRoutineController,
                onPlanRoutineDeleted: (planRoutine) {
                  getCubit(context).emitPlanRoutineDeleted(planRoutine);
                  if (onPlanRoutineDeleted != null) {
                    onPlanRoutineDeleted!(planRoutine);
                  }
                },
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                    padding: edge_insets_x_8, backgroundColor: AppColors.grey3),
                onPressed: () {
                  FirebaseAnalytics.instance.logEvent(name: "tracker_reminders_plan_routine_details_close_button");
                  trackerDeletePlanRoutineController.getChildCubit()
                      .deletePlanRoutine(planRoutine);
                },
                icon: Text(
                  AppDateTimeUtils.formatDateTime(
                      planRoutine.time, AppDateTimeUtils.defaultTimeForm),
                  style: const TextStyle(fontSize: 12, color: AppColors.textNormal),
                ),
                label: const Icon(
                  Icons.close,
                  size: 14,
                  weight: 700,
                  color: AppColors.grey4,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerRemindersPlanRoutineDetailsCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerRemindersPlanRoutineDetailsCubit cubit =
        TrackerRemindersPlanRoutineDetailsCubit(planRoutine: planRoutine);
    return cubit;
  }
}
