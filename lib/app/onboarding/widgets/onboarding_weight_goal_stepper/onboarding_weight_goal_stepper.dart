import 'package:beebloom_water_tracker/app/core/authentication/authentication_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:go_router/go_router.dart';

import 'onboarding_weight_goal_goal_step/onboarding_weight_goal_goal_step.dart';
import 'onboarding_weight_goal_goal_step/onboarding_weight_goal_goal_step_controller.dart';
import 'onboarding_weight_goal_stepper_controller.dart';
import 'onboarding_weight_goal_stepper_cubit.dart';
import 'onboarding_weight_goal_stepper_weight_step/onboarding_weight_goal_stepper_weight_step.dart';
import 'onboarding_weight_goal_stepper_weight_step/onboarding_weight_goal_stepper_weight_step_controller.dart';

class OnboardingWeightGoalStepper extends BaseStatelessWidget<
    OnboardingWeightGoalStepperController, OnboardingWeightGoalStepperCubit> {
  OnboardingWeightGoalStepper({Key? key, this.onLoadingChanged})
      : super(key: key);

  Function(ApiStateStatus)? onLoadingChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWeightGoalStepperCubit>(
      create: (context) => OnboardingWeightGoalStepperCubit(),
      child: BlocConsumer<OnboardingWeightGoalStepperCubit,
          OnboardingWeightGoalStepperState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state.apiStateStatus == ApiStateStatus.loading) {
            onLoadingChanged!(state.apiStateStatus);
          }
        },
        builder: (context, state) {
          return Scaffold(
              body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/welcome_bg.png"),
                    fit: BoxFit.cover)),
            child: DefaultWizardController(
                stepControllers: [
                  WizardStepController(
                      step: OnboardingWeightGoalStepperWeightStepController()),
                  WizardStepController(
                      step: OnboardingWeightGoalGoalStepController())
                ],
                child: Column(
                  children: [
                    Expanded(
                      child: Wizard(stepBuilder: (context, state) {
                        if (state
                            is OnboardingWeightGoalStepperWeightStepController) {
                          return OnboardingWeightGoalStepperWeightStep(
                            onWeightUpdated: (weight) {
                              UserAccount userAccount =
                                  getLoggedUserAccount(context)!;
                              getCubit(context)
                                  .updateWeight(weight, userAccount);
                              WizardController.of(context).goNext();
                            },
                          );
                        }
                        if (state is OnboardingWeightGoalGoalStepController) {
                          return OnboardingWeightGoalGoalStep(
                            weight: getCubit(context).state.weight,
                            controller: state,
                            onGoalConfirmed: (goal) async {
                              await getCubit(context).updateGoal(
                                  goal, getLoggedUserAccount(context)!);
                              await getCubit(context).updateOnboardingStatus(
                                  BooleanStatus.completed,
                                  getLoggedUserAccount(context)!);
                              UserAccount userAccount =
                                  getLoggedUserAccount(context)!;
                              // userAccount.onboardingStatus=BooleanStatus.completed;

                              AuthenticationCubit authenticationCubit =
                                  BlocProvider.of<AuthenticationCubit>(context);
                              authenticationCubit.updateUserAccount(userAccount,
                                  onboardingStatus: BooleanStatus.completed);
                              context.go('/tracker');
                              // context.go()
                            },
                          );
                        }
                        return Container();
                      }),
                    ),
                  ],
                )),
          ));
        },
      ),
    );
  }

  @override
  OnboardingWeightGoalStepperCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingWeightGoalStepperCubit cubit =
        OnboardingWeightGoalStepperCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
