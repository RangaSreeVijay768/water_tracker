part of 'onboarding_weight_goal_stepper_cubit.dart';

@freezed
class OnboardingWeightGoalStepperState with _$OnboardingWeightGoalStepperState {
  const factory OnboardingWeightGoalStepperState.initial(
          {@Default(0) int currentStep,
          @Default(2) int totalSteps,
          @Default(0.0) double weight,
          @Default(3000.0) double recommendedGoal,
          @Default(2500.0) double selectedGoal,
          @Default(BooleanStatus.pending) BooleanStatus onBoardingStatus,
          @Default(ApiStateStatus.initial) ApiStateStatus apiStateStatus}) =
      _Initial;
}
