part of 'onboarding_weight_goal_goal_step_cubit.dart';

@freezed
class OnboardingWeightGoalGoalStepState
    with _$OnboardingWeightGoalGoalStepState {
  const factory OnboardingWeightGoalGoalStepState.initial(
          {required double weight,
          @Default(3000) double recommendedGoal,
          @Default(2500) double currentGoal,
          @Default(ApiStateStatus.initial) ApiStateStatus apiStateStatus}) =
      _Initial;
}
