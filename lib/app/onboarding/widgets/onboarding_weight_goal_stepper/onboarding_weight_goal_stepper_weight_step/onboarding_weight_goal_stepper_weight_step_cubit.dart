import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_weight_goal_stepper_weight_step_state.dart';

part 'onboarding_weight_goal_stepper_weight_step_cubit.freezed.dart';

class OnboardingWeightGoalStepperWeightStepCubit
    extends Cubit<OnboardingWeightGoalStepperWeightStepState> {
  OnboardingWeightGoalStepperWeightStepCubit()
      : super(const OnboardingWeightGoalStepperWeightStepState.initial());

  weightUpdated(double weight) {
    emit(state.copyWith(weight: weight));
  }
}
