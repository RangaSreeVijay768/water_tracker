import 'package:beebloom_water_tracker/app/core/services/vibrations_service.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_task_activity_record/tracker_create_task_activity_record_controller.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/shadows.dart';
import 'tracker_create_task_activity_record_cubit.dart';

class TrackerCreateTaskActivityRecord extends BaseStatelessWidget<
    TrackerCreateTaskActivityRecordController,
    TrackerCreateTaskActivityRecordCubit> {
  Function(int)? onTaskActivityRecordCreated;

  late VibrationsService vibrationsService;

  TrackerCreateTaskActivityRecord(
      {super.key, this.onTaskActivityRecordCreated, super.controller}) {
    vibrationsService = GetIt.instance<VibrationsService>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateTaskActivityRecordCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerCreateTaskActivityRecordCubit,
          TrackerCreateTaskActivityRecordState>(
        listener: (context, state) {
          // if (state is TrackerCreateTaskActivityRecordCreateSuccess) {
          //   onTaskActivityRecordCreated!();
          //   vibrationsService.vibrate(duration: 500, amplitude: 1);
          // }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            // margin: edge_insets_r_20,
            decoration: BoxDecoration(
                borderRadius: borderRadius.br_100,
                boxShadow: const [shadows.bs_primary],
                color: AppColors.bgPrimary),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                size: 50,
                color: AppColors.white,
              ),
              onPressed: () async {
                FirebaseAnalytics.instance.logEvent(name: "tracker_create_task_activity_record");
                int taskActivityRecordId = await getCubit(context)
                    .createTaskActivityRecord(
                        drinkType: DrinkType.findByDrinkType(state.drinkType));
                if (onTaskActivityRecordCreated != null) {
                  onTaskActivityRecordCreated!(taskActivityRecordId);
                }
                vibrationsService.vibrate(duration: 500, amplitude: 1);
              },
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerCreateTaskActivityRecordCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateTaskActivityRecordCubit cubit =
        TrackerCreateTaskActivityRecordCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
