import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/borders.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../tracker_half_goal_acheived_modal_data.dart';
import 'tracker_half_goal_acheived_modal_content_controller.dart';
import 'tracker_half_goal_acheived_modal_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerHalfGoalAcheivedModalContent extends BaseModalContent<
    TrackerHalfGoalAcheivedModalContentController,
    TrackerHalfGoalAcheivedModalContentCubit,
    TrackerHalfGoalAcheivedModalData> {
  TrackerHalfGoalAcheivedModalContent({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerHalfGoalAcheivedModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerHalfGoalAcheivedModalContentCubit,
          TrackerHalfGoalAcheivedModalContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: edge_insets_x_30,
                      child: ClipRRect(
                        borderRadius: borderRadius.br_20,
                        child: Image.asset(
                          "images/half_goal.gif",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      "Congratulations",
                      style: TextStyle(
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f700,
                          fontFamily: Fonts.fontPlayfairDisplay),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "You have completed half of your daily goal",
                      style: TextStyle(color: AppColors.grey1),
                    ),
                    Container(
                      margin: edge_insets_t_32,
                      decoration: BoxDecoration(
                        borderRadius: borderRadius.br_5,
                        color: AppColors.bgPrimary005,
                      ),
                      padding: edge_insets_x_16_y_8,
                      child: const Text(
                        "1st time this week",
                        style: TextStyle(color: AppColors.bgPrimary),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: edge_insets_t_28,
                padding: edge_insets_12,
                child: IconButton(
                    onPressed: () {
                      closeModal(
                          context, ModalData(status: BooleanStatus.closed));
                    },
                    icon: const Icon(Icons.close)),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerHalfGoalAcheivedModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerHalfGoalAcheivedModalContentCubit cubit =
        TrackerHalfGoalAcheivedModalContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
