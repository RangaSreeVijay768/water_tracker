import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'onboarding_weight_goal_goal_step_cubit.freezed.dart';
part 'onboarding_weight_goal_goal_step_state.dart';

class OnboardingWeightGoalGoalStepCubit
    extends Cubit<OnboardingWeightGoalGoalStepState> {
  late TaskActivitiesService taskActivitiesService;

  OnboardingWeightGoalGoalStepCubit(double weight)
      : super(OnboardingWeightGoalGoalStepState.initial(weight: weight)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getRecommendedGoal(weight);
  }

  getRecommendedGoal(double weight) async {
    double goal = await taskActivitiesService.getRecommendedGoal(weight);
    if (goal==0) {
      goal=2500;
    }
    emit(state.copyWith(recommendedGoal: goal));
  }

  setApiStateStatus(ApiStateStatus apiStateStatus) async {
    emit(state.copyWith(apiStateStatus: apiStateStatus));
  }

  double updateCurrentGoal(double currentGoal) {
    emit(state.copyWith(currentGoal: currentGoal));
    return currentGoal;
  }
}
