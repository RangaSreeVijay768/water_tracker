import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_water_goal_slider_state.dart';
part 'onboarding_water_goal_slider_cubit.freezed.dart';

class OnboardingWaterGoalSliderCubit extends Cubit<OnboardingWaterGoalSliderState> {
  OnboardingWaterGoalSliderCubit(double goal) : super( OnboardingWaterGoalSliderState.initial(goal: goal));

  updateGoal(double goal){
    emit(state.copyWith(goal: goal));
  }
}

