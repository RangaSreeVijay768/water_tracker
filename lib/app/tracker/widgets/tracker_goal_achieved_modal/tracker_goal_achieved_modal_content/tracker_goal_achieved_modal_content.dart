import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tracker_goal_achieved_modal_content_controller.dart';
import 'tracker_goal_achieved_modal_content_cubit.dart';

class TrackerGoalAchievedModalContent extends BaseModalContent<
    TrackerGoalAchievedModalContentController,
    TrackerGoalAchievedModalContentCubit,
    ModalData<UserTaskActivityGoal>> {
  TrackerGoalAchievedModalContent({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGoalAchievedModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGoalAchievedModalContentCubit,
          TrackerGoalAchievedModalContentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
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
                          "images/full_goal.gif",
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
                      "You have completed your daily goal",
                      style: TextStyle(color: AppColors.grey1),
                    ),
                    // Container(
                    //   margin: edge_insets_t_32,
                    //   decoration: BoxDecoration(
                    //     borderRadius: borderRadius.br_5,
                    //     color: AppColors.bgPrimary005,
                    //   ),
                    //   padding: edge_insets_x_16_y_8,
                    //   child: const Text(
                    //     "1st time this week",
                    //     style: TextStyle(color: AppColors.bgPrimary),
                    //   ),
                    // )
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
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> AdsAppOpenAd()));
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
  TrackerGoalAchievedModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerGoalAchievedModalContentCubit cubit =
        TrackerGoalAchievedModalContentCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
