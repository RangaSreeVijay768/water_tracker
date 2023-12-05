import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_goal_modal/tracker_edit_goal_modal_content/tracker_edit_goal_modal_content_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_goal_modal/tracker_edit_goal_modal_content/tracker_edit_goal_modal_content_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_task_activity_goal/tracker_edit_task_activity_goal.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';
import '../../tracker_edit_task_activity_goal/tracker_edit_task_activity_goal_controller.dart';

class TrackerEditGoalModalContent extends BaseModalContent<
    TrackerEditGoalModalContentController,
    TrackerEditGoalModalContentCubit,
    TaskActivityGoal> {
  TrackersEditTaskActivityGoalController
      trackersEditTaskActivityGoalController =
      TrackersEditTaskActivityGoalController();

  TaskActivityGoal taskActivityGoal;
  Function(double)? onGoalConfirmed;
  Function(double)? onGoalChanged;

  TrackerEditGoalModalContent(
      {required this.taskActivityGoal,
      Key? key,
      super.controller,
      this.onGoalConfirmed,
      this.onGoalChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerEditGoalModalContentCubit,
          TrackerEditGoalModalContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: borderRadius.br_t_20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: edge_insets_16,
                              decoration:
                                  BoxDecoration(border: borders.bb_1px_grey1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Edit goal',
                                    style: TextStyle(
                                      color: AppColors.textHeading,
                                      fontSize: Fonts.fontSize24,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        FirebaseAnalytics.instance.logEvent(name: "tracker_edit_goal_modal_content_clear_button");
                                        Navigator.pop(context);
                                        },
                                      style: IconButton.styleFrom(
                                          padding: edge_insets_0),
                                      icon: const Icon(Icons.clear))
                                ],
                              ),
                            ),
                            Container(
                              margin: edge_insets_t_28,
                              padding: edge_insets_x_16,
                              height: 48,
                              color: AppColors.bgLightGrey,
                              child: Row(
                                children: [
                                  Container(
                                    margin: edge_insets_y_13,
                                    padding: edge_insets_r_8,
                                    child: const Icon(
                                      Icons.hourglass_empty,
                                      color: AppColors.bgPrimary,
                                    ),
                                  ),
                                  Text.rich(TextSpan(
                                      text: 'we suggest goal of ',
                                      style: const TextStyle(
                                          color: AppColors.grey1,
                                          fontSize: Fonts.fontSize14,
                                          fontWeight: Fonts.f400,
                                          fontFamily: Fonts.fontNunito),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: '${((state.recommendedGoal) / 1000)
                                                  .toStringAsFixed(1)} litres',
                                          style: const TextStyle(
                                            fontWeight: Fonts.f700,
                                            color: AppColors.textHeading,
                                          ),
                                        ),
                                        const TextSpan(
                                          text: ' for you',
                                          style: TextStyle(
                                            color: AppColors.grey1,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f400,
                                          ),
                                        )
                                      ]))
                                ],
                              ),
                            ),
                            Container(
                              margin: edge_insets_t_24,
                              alignment: Alignment.center,
                              child: Container(
                                padding: edge_insets_x_40_y_10,
                                decoration: BoxDecoration(
                                  border: borders.b_1px_grey2,
                                  borderRadius: borderRadius.br_10,
                                ),
                                child: Text.rich(TextSpan(
                                    text:
                                        (state.goal! / 1000).toStringAsFixed(1),
                                    style: const TextStyle(
                                        fontWeight: Fonts.f700,
                                        fontSize: Fonts.fontSize24,
                                        fontFamily: Fonts.fontNunito),
                                    children: const <InlineSpan>[
                                      TextSpan(
                                          text: " litres",
                                          style: TextStyle(
                                              color: AppColors.grey1,
                                              fontSize: Fonts.fontSize18,
                                              fontWeight: Fonts.f400)),
                                    ])),
                              ),
                            ),
                            Container(
                              margin: edge_insets_t_12,
                              padding: edge_insets_x_16,
                              child: Flex(
                                direction: Axis.horizontal,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            "images/bubble.png",
                                            height: 32,
                                            width: 32,
                                          ),
                                        ),
                                        Expanded(
                                          child: SfSliderTheme(
                                              data: SfSliderThemeData(
                                                  activeTrackHeight: 6,
                                                  inactiveTrackHeight: 6,
                                                  thumbRadius: 8,
                                                  thumbColor: AppColors.white,
                                                  thumbStrokeWidth: 1,
                                                  thumbStrokeColor:
                                                      AppColors.bgPrimary,
                                                  activeDividerColor:
                                                      AppColors.primary,
                                                  inactiveTrackColor:
                                                      AppColors.grey3,
                                                  activeTrackColor:
                                                      AppColors.waterPrimary),
                                              child: SfSlider(
                                                min: 1000.0,
                                                max: 8000.0,
                                                interval: 100,
                                                stepSize: 100,
                                                value: state.goal,
                                                // trackShape: _SfTrackShape(),
                                                onChanged: (value) {
                                                  print("chnaging");
                                                  getCubit(context)
                                                      .updateGoal(goal: value);
                                                  if (onGoalChanged != null) {
                                                    onGoalChanged!(value);
                                                  }
                                                },
                                              )),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            "images/bubbles.png",
                                            height: 32,
                                            width: 32,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            state.goal! < state.recommendedGoal
                                ? Container(
                                    margin: edge_insets_16,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: edge_insets_r_8,
                                          child: const Icon(
                                            Icons.error_outline,
                                            color: AppColors.textRed,
                                          ),
                                        ),
                                        const Text(
                                          "Your hydration amount is too low",
                                          style: TextStyle(
                                              color: AppColors.textRed,
                                              fontSize: Fonts.fontSize14,
                                              fontWeight: Fonts.f400,
                                              fontFamily: Fonts.fontNunito),
                                        )
                                      ],
                                    ),
                                  )
                                : const SizedBox(
                                    height: 56,
                                  ),
                            const SizedBox(
                              height: 200,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white, border: borders.bt_1px_grey2),
                  padding: edge_insets_16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        // width: MediaQuery.of(context).size.width / 2,
                        child: TextButton(
                          onPressed: () {
                            FirebaseAnalytics.instance.logEvent(name: "tracker_edit_goal_modal_content_cancel_button");
                            Navigator.pop(context);
                            },
                          style: TextButton.styleFrom(),
                          child: const Text(
                            ' cancel ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.bgPrimary,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      TrackerEditTaskActivityGoal(
                          controller: trackersEditTaskActivityGoalController),
                      Expanded(
                        // width: MediaQuery.of(context).size.width/2,
                        child: TextButton(
                          onPressed: () async {
                            TaskActivityGoal taskActivityGoal =
                                await trackersEditTaskActivityGoalController
                                    .cubit!
                                    .updateTaskActivityGoal(state
                                        .taskActivityGoal
                                        .copyWith(goalValue: state.goal));
                            closeModal(
                                context,
                                ModalData(
                                    status: BooleanStatus.success,
                                    data: taskActivityGoal));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.bgPrimary,
                          ),
                          child: const Text(
                            'schedule',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerEditGoalModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerEditGoalModalContentCubit trackerEditGoalModalContentCubit =
        TrackerEditGoalModalContentCubit(
            taskActivityGoal: taskActivityGoal, context: context);
    controller?.cubit = trackerEditGoalModalContentCubit;
    return trackerEditGoalModalContentCubit;
  }
}
