import 'package:beebloom_water_tracker/app/core/database/modal_status.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_between_modal/tracker_task_activity_records_between_modal_content/tracker_task_activity_records_between_modal_content.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_between_modal/tracker_task_activity_records_between_modal_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_between_modal/tracker_task_activity_records_between_modal_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';


class TrackerTaskActivityRecordsBetweenModal extends BaseStatelessWidget<
    TrackerTaskActivityRecordsBetweenModalController,
    TrackerTaskActivityRecordsBetweenModalCubit> {
  DateTime startTime;
  DateTime endTime;

  TrackerTaskActivityRecordsBetweenModal(
      {required this.startTime, required this.endTime, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTaskActivityRecordsBetweenModalCubit>(

        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<TrackerTaskActivityRecordsBetweenModalCubit,
            TrackerTaskActivityRecordsBetweenModalState>(
          listener: (context, state) {
            if (state.modalStatus == ModalStatus.opened) {}
          },
          builder: (context, state) {
            return TextButton(
              onPressed: () {
                FirebaseAnalytics.instance.logEvent(name: "tracker_task_activity_records_between_modal_folder_button");
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return TrackerTaskActivityRecordsBetweenModalContent(
                      startTime: state.startTime,
                      endTime: state.endTime,
                    );
                  },
                );
              },
              style: TextButton.styleFrom(
                padding: edge_insets_0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)
              ),
              child: Row(
                children: [
                  Container(
                    margin: edge_insets_r_8,
                    child: const Icon(
                      Icons.folder_outlined,
                      color: AppColors.bgPrimary,
                    ),
                  ),
                  const Text(
                    "Today's log",
                    style: TextStyle(
                      fontWeight: Fonts.f700,
                      color: AppColors.bgPrimary,
                      fontSize: Fonts.fontSize14,
                      fontFamily: Fonts.fontNunito,
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }

  @override
  TrackerTaskActivityRecordsBetweenModalCubit
      createCubitAndAssignToController(BuildContext context) {
    TrackerTaskActivityRecordsBetweenModalCubit cubit =
        TrackerTaskActivityRecordsBetweenModalCubit(
            startTime: startTime, endTime: endTime);
    controller?.cubit = cubit;
    return cubit;
  }
}
