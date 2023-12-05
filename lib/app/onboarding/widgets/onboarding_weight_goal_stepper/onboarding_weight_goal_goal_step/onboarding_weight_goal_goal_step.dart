import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_water_goal_slider/onboarding_water_goal_slider.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_water_goal_slider/onboarding_water_goal_slider_controller.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'onboarding_weight_goal_goal_step_controller.dart';
import 'onboarding_weight_goal_goal_step_cubit.dart';

class OnboardingWeightGoalGoalStep extends BaseStatelessWidget<
    OnboardingWeightGoalGoalStepController, OnboardingWeightGoalGoalStepCubit> {
  double weight;
  bool loaded = true;
  OnboardingWaterGoalSliderController onboardingWaterGoalSliderController =
      OnboardingWaterGoalSliderController();

  Function(double)? onGoalConfirmed;
  Function(double)? onGoalChanged;

  OnboardingWeightGoalGoalStep(
      {required this.weight, Key? key,
      super.controller,
      this.onGoalConfirmed,
      this.onGoalChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWeightGoalGoalStepCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingWeightGoalGoalStepCubit,
          OnboardingWeightGoalGoalStepState>(
        listener: (context, state) {
          onboardingWaterGoalSliderController.cubit
              ?.updateGoal(state.recommendedGoal);
          // if(state.apiStateStatus==ApiStateStatus.loading){
          //   OnboardingWeightGoalGoalStepController.cubit
          //       ?.setApiStateStatus(state.apiStateStatus);
          // }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: edge_insets_16,
              margin: edge_insets_t_7,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // padding: edge_insets_16,
                          margin: edge_insets_t_32,
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            child: const CircleAvatar(
                              radius: 15,
                              backgroundColor: AppColors.grey2,
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: AppColors.textHeading,
                              ),
                            ),
                            onTap: () {
                              WizardController controller =
                              WizardController.of(context);
                              controller.goBack();
                            },
                          )),
                      Container(
                        margin: edge_insets_t_24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                margin: edge_insets_r_4,
                                child: LinearPercentIndicator(
                                  padding: edge_insets_0,
                                  backgroundColor: AppColors.white03,
                                  lineHeight: 8,
                                  percent: 1,
                                  barRadius: const Radius.circular(10),
                                  progressColor: AppColors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: edge_insets_l_4,
                                child: LinearPercentIndicator(
                                  animation: true,
                                  animateFromLastPercent: true,
                                  animationDuration: 800,
                                  padding: edge_insets_0,
                                  backgroundColor: AppColors.white03,
                                  lineHeight: 8,
                                  percent: 1,
                                  barRadius: const Radius.circular(10),
                                  progressColor: AppColors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: edge_insets_t_24,
                        child: const Text(
                          "Set your water goal",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: Fonts.fontSize24,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ),
                      Container(
                        padding: edge_insets_t_8,
                        child: const Text(
                          "You can adjust the water goal based on your requirements to feel great and healthy.",
                          style: TextStyle(
                            color: AppColors.grey2,
                            fontSize: Fonts.fontSize14,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f400,
                          ),
                        ),
                      ),
                      Container(
                          margin: edge_insets_t_56,
                          height: 48,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              border: borders.b_1px_green,
                              borderRadius: borderRadius.br_5),
                          child: Row(children: [
                            Container(
                                margin: edge_insets_8,
                                child: Image.asset(
                                    "images/bubble-outline-blue.png")),
                            Text.rich(TextSpan(
                                text: 'we suggest goal of ',
                                style: const TextStyle(
                                    color: AppColors.grey1,
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f400,
                                    fontFamily: Fonts.fontNunito),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text:
                                    '${(state.recommendedGoal / 1000).toStringAsFixed(1)} litres',
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
                                        fontFamily: Fonts.fontNunito),
                                  )
                                ]))
                          ])),
                      Container(
                        padding: edge_insets_t_16,
                        child: const Text(
                          "Water (in liters) to drink a day should be equal to Your Weight (in Kg) multiplied by 0.033.",
                          style: TextStyle(
                            color: AppColors.grey2,
                            fontSize: Fonts.fontSize14,
                            fontFamily: Fonts.fontNunito,
                            fontWeight: Fonts.f400,
                          ),
                        ),
                      ),
                      Container(
                        // padding: edge_insets_x_8,
                        margin: edge_insets_t_16,
                        child: BlurryContainer(
                          padding: edge_insets_0,
                          blur: 2,
                          child: Container(
                            padding: edge_insets_y_24,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.center,
                                    colors: [
                                      AppColors.bgLightBlue,
                                      AppColors.white012,
                                      AppColors.white018
                                    ]),
                                border: borders.b_1px_bgLightBlue,
                                borderRadius: borderRadius.br_20),
                            child: Column(
                              children: [
                                OnboardingWaterGoalSlider(
                                    onGoalChanged: (goal) {
                                      if (onGoalChanged != null) {
                                        onGoalChanged!(goal);

                                      }
                                      getCubit(context).updateCurrentGoal(goal);
                                    },
                                    controller:
                                    onboardingWaterGoalSliderController,
                                    goal: state.recommendedGoal),
                                state.recommendedGoal > state.currentGoal
                                    ? Container(
                                  margin: edge_insets_t_16,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: edge_insets_l_24,
                                        margin: edge_insets_r_8,
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
                                    : const SizedBox(height: 40,),
                                Container(
                                  margin: edge_insets_t_56,
                                  alignment: Alignment.center,
                                  decoration:
                                  BoxDecoration(borderRadius: borderRadius.br_30),
                                  child: TextButton(
                                    // onHover: HSLColor.fromColor(Colors.black),
                                      style: TextButton.styleFrom(
                                          padding: edge_insets_x_90_y_12,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: borderRadius.br_30),
                                          backgroundColor: AppColors.white),
                                      onPressed: () async {
                                        FirebaseAnalytics.instance.logEvent(name: "onboarding_weight_goal_goal_step_set_goal_button");
                                        if (onGoalConfirmed != null) {
                                          onGoalConfirmed!(state.currentGoal);
                                        }
                                        await Future.delayed(
                                            const Duration(seconds: 10));
                                      },
                                      child: state.apiStateStatus ==
                                          ApiStateStatus.loading
                                          ? const CircularProgressIndicator(
                                        color: AppColors.white,
                                      )
                                          : const Text(
                                        "Set goal",
                                        style: TextStyle(
                                          color: AppColors.bgPrimary,
                                          fontFamily: Fonts.fontNunito,
                                          fontSize: Fonts.fontSize18,
                                          fontWeight: Fonts.f700,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  OnboardingWeightGoalGoalStepCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingWeightGoalGoalStepCubit cubit =
        OnboardingWeightGoalGoalStepCubit(weight);
    controller?.cubit = cubit;
    return cubit;
  }
}
