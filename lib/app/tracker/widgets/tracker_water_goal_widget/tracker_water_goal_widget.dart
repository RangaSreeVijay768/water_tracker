import 'dart:math';

import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_water_goal_widget/tracker_water_goal_widget_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_water_goal_widget/tracker_water_goal_widget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/fonts.dart';

class TrackerWaterGoalWidget extends BaseStatelessWidget<
    TrackerWaterGoalWidgetController, TrackerWaterGoalWidgetCubit> {
  late UserAccount userAccount;
  late DateTime startTime;
  late DateTime endTime;

  TrackerWaterGoalWidget(
      {required this.userAccount,
      required this.startTime,
      required this.endTime,
      super.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerWaterGoalWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerWaterGoalWidgetCubit,
          TrackerWaterGoalWidgetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0, 0.8),
                  colors: <Color>[AppColors.bgPrimary2, AppColors.white04],
                )),
            padding: edge_insets_x_80_y_50,
            child: Container(
              // height: 200,
              // width: 200,
              decoration: BoxDecoration(
                borderRadius: borderRadius.br_100,
                color: Colors.white54,
              ),
              child: CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 13.0,
                circularStrokeCap: CircularStrokeCap.round,
                percent: min(state.currentQuantity / state.goalQuantity, 1.0),
                center: SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(TextSpan(
                          text: "${state.currentQuantity.toStringAsFixed(1)}ml",
                          style: const TextStyle(
                              fontSize: Fonts.fontSize20,
                              fontWeight: Fonts.f700,
                              fontFamily: Fonts.fontNunito),
                          children: [
                            TextSpan(
                                text:
                                    "/ ${(state.goalQuantity / 1000).toStringAsFixed(1)}l",
                                style: const TextStyle(
                                  fontSize: Fonts.fontSize14,
                                )),
                          ])),
                      Column(
                        children: [
                          Container(
                            child: Image.asset(
                              "images/fish.png",
                              width: 37,
                              height: 37,
                            ),
                          ),
                          Container(
                              margin: edge_insets_t_10,
                              child: const Text(
                                "ocean fish!",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.bgPrimary),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                progressColor: AppColors.bgPrimary,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerWaterGoalWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerWaterGoalWidgetCubit cubit =
        TrackerWaterGoalWidgetCubit(userAccount, startTime, endTime);
    controller?.cubit = cubit;
    return cubit;
  }
}

class TrackerWaterGoalWidgetMini extends TrackerWaterGoalWidget {
  TrackerWaterGoalWidgetMini(
      {required super.userAccount,
      required super.startTime,
      required super.endTime,
      super.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerWaterGoalWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerWaterGoalWidgetCubit,
          TrackerWaterGoalWidgetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return CircularPercentIndicator(
            radius: 78.0,
            lineWidth: 10.0,
            circularStrokeCap: CircularStrokeCap.round,
            percent: min(state.currentQuantity / state.goalQuantity, 1.0),
            center: CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.skyBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(TextSpan(
                      text: "${state.currentQuantity.toStringAsFixed(1)}ml",
                      style: const TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f700,
                          fontFamily: Fonts.fontNunito),
                      children: [
                        TextSpan(
                            text:
                            "/ ${(state.goalQuantity / 1000).toStringAsFixed(1)}l",
                            style: const TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14,
                            )),
                      ])),
                  SizedBox(height: 6,),
                  Text("${((state.currentQuantity / state.goalQuantity) * 100).toStringAsFixed(0)}%", style: TextStyle(
                      color: AppColors.orange,
                      fontSize: Fonts.fontSize14,
                      fontWeight: Fonts.f500
                  ),)
                ],
              ),
            ),
            backgroundColor: AppColors.white,
            progressColor: AppColors.bgPrimary,
          );
        },
      ),
    );
  }

  @override
  TrackerWaterGoalWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerWaterGoalWidgetCubit cubit =
        TrackerWaterGoalWidgetCubit(userAccount, startTime, endTime);
    controller?.cubit = cubit;
    return cubit;
  }
}
