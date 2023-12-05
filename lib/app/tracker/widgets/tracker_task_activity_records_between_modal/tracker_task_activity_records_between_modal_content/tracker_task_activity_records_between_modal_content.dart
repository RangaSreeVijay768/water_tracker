import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_records_between/tracker_get_task_activity_records_between.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_between_modal/tracker_task_activity_records_between_modal_content/tracker_task_activity_records_between_modal_content_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_between_modal/tracker_task_activity_records_between_modal_content/tracker_task_activity_records_between_modal_content_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';

class TrackerTaskActivityRecordsBetweenModalContent extends BaseStatelessWidget<
    TrackerTaskActivityRecordsBetweenModalContentController,
    TrackerTaskActivityRecordsBetweenModalContentCubit> {
  DateTime startTime;
  DateTime endTime;

  TrackerTaskActivityRecordsBetweenModalContent(
      {required this.startTime, required this.endTime, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTaskActivityRecordsBetweenModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocBuilder<TrackerTaskActivityRecordsBetweenModalContentCubit,
          TrackerTaskActivityRecordsBetweenModalContentState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: borderRadius.br_t_20,
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(
                      border: borders.bb_1px_grey1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Today’s log',
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize24,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            FirebaseAnalytics.instance.logEvent(name: "tracker_task_activity_records_between_modal_content_clear_button");
                            Navigator.pop(context);
                          },
                          style: IconButton.styleFrom(padding: edge_insets_0),
                          icon: const Icon(Icons.clear))
                    ],
                  ),
                ),
                Flexible(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: edge_insets_b_200,
                        child: TrackerGetTaskActivityRecordsBetweenVerticalScroll(
                          startTime: state.startTime,
                          endTime: state.endTime,
                        ),
                      ),
                    )
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerTaskActivityRecordsBetweenModalContentCubit
      createCubitAndAssignToController(BuildContext context) {
    // TODO: implement createCubitAndAssignToController
    TrackerTaskActivityRecordsBetweenModalContentCubit cubit =
        TrackerTaskActivityRecordsBetweenModalContentCubit(
            startTime: startTime, endTime: endTime);
    controller?.cubit = cubit;
    return cubit;
  }
}
