import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_weight_scale/onboarding_weight_scale.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'onboarding_weight_goal_stepper_weight_step_controller.dart';
import 'onboarding_weight_goal_stepper_weight_step_cubit.dart';

class OnboardingWeightGoalStepperWeightStep extends BaseStatelessWidget<
    OnboardingWeightGoalStepperWeightStepController,
    OnboardingWeightGoalStepperWeightStepCubit> {
  OnboardingWeightGoalStepperWeightStep(
      {Key? key, this.onWeightChanged, this.onWeightUpdated})
      : super(key: key);

  Function(double weight)? onWeightChanged;
  Function(double weight)? onWeightUpdated;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWeightGoalStepperWeightStepCubit>(
      create: (context) => OnboardingWeightGoalStepperWeightStepCubit(),
      child: BlocConsumer<OnboardingWeightGoalStepperWeightStepCubit,
          OnboardingWeightGoalStepperWeightStepState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
            margin: edge_insets_16,
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
                            Navigator.pop(context);
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
                                percent: 0,
                                barRadius: const Radius.circular(10),
                                progressColor: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: edge_insets_t_48,
                      child: const Text(
                        "How much do you weigh?",
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
                        "Exact amount of water you should consume can be decided by your body weight.",
                        style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: Fonts.fontSize14,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f400,
                        ),
                      ),
                    ),
                    Container(
                      padding: edge_insets_x_8,
                      margin: edge_insets_t_56,
                      child: BlurryContainer(
                        padding: edge_insets_0,
                        blur: 3,
                        child: Container(
                          padding: edge_insets_x_16_y_24,
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
                              OnboardingWeightScale(onWeightChanged: (weight) {
                                getCubit(context).weightUpdated(weight);
                              }),
                              Container(
                                margin: edge_insets_t_40,
                                alignment: Alignment.center,
                                decoration:
                                    BoxDecoration(borderRadius: borderRadius.br_30),
                                child: TextButton(
                                  // onHover: HSLColor.fromColor(Colors.black),
                                  style: TextButton.styleFrom(
                                      padding: edge_insets_x_80_y_12,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: borderRadius.br_30),
                                      backgroundColor: AppColors.white),
                                  onPressed: () {
                                    FirebaseAnalytics.instance.logEvent(name: "onboarding_weight_goal_stepper_weight_step_set_weight_button");
                                    onWeightUpdated!(state.weight);
                                  },
                                  child: const Text(
                                    "Set weight",
                                    style: TextStyle(
                                      color: AppColors.bgPrimary,
                                      fontFamily: Fonts.fontNunito,
                                      fontSize: Fonts.fontSize18,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  OnboardingWeightGoalStepperWeightStepCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingWeightGoalStepperWeightStepCubit cubit =
        OnboardingWeightGoalStepperWeightStepCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
