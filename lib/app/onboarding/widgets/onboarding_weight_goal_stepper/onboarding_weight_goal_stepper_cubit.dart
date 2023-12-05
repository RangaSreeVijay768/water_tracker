import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'onboarding_weight_goal_stepper_cubit.freezed.dart';
part 'onboarding_weight_goal_stepper_state.dart';

class OnboardingWeightGoalStepperCubit
    extends Cubit<OnboardingWeightGoalStepperState> {
  late TaskActivitiesService taskActivitiesService;
  late UserAccountsService userAccountsService;

  OnboardingWeightGoalStepperCubit()
      : super(const OnboardingWeightGoalStepperState.initial()) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    userAccountsService = GetIt.instance<UserAccountsService>();
  }

  updateWeight(double weight, UserAccount userAccount) async {
    await userAccountsService.updateUserAccount(userAccount, weight: weight);
    emit(state.copyWith(weight: weight));
  }

  updateGoal(double goal, UserAccount userAccount) async {
    logger.d("user account ${userAccount.userAccountId}");
    TaskActivityGoal taskActivityGoal = TaskActivityGoal(
        goalType: GoalType.dailyDrinkingWater,
        goalValue: goal,
        status: BooleanStatus.active,
        userAccountId: userAccount.userAccountId!);
    await taskActivitiesService.saveTaskActivityGoal(taskActivityGoal);
  }

  updateOnboardingStatus(BooleanStatus status, UserAccount userAccount) async {
    // emit(state.copyWith(api))
    await userAccountsService.updateUserAccount(userAccount,
        onboardingStatus: status);
    emit(state.copyWith(onBoardingStatus: status));
  }
}

