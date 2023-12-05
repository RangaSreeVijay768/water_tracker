import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/models/page_status.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen_state.dart';
import 'package:get_it/get_it.dart';

class TrackerDrinkWaterScreenCubit
    extends BaseCubit<TrackerDrinkWaterScreenState> {
  late TaskActivitiesService taskActivitiesService;
  late PlanRoutinesService planRoutinesService;

  TrackerDrinkWaterScreenCubit({required super.context})
      : super(
            initialState: const TrackerDrinkWaterScreenState.initial(
                pageStatus: PageStatus.initial)) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    planRoutinesService = GetIt.instance<PlanRoutinesService>();
    initializeWaterScreen();
  }

  initializeWaterScreen() async {
    Future.delayed(const Duration(seconds: 5));
    DateTime currentTime = DateTime.now();
    DateTime dayStartTime = AppDateTimeUtils.getStartTimeOfDateTime(currentTime);
    DateTime dayEndTime = AppDateTimeUtils.getEndTimeOfDateTime(currentTime);
    DateTime historyStartTime = AppDateTimeUtils.getStartTimeOfDateTime(
        currentTime.subtract(const Duration(days: 7)));
    DateTime historyEndTime = AppDateTimeUtils.getEndTimeOfDateTime(
        currentTime.subtract(const Duration(days: 1)));
    TaskActivityGoal? taskActivityGoal =
        await getTaskActivityGoalForUserAccount(getUserAccount());
    List<PlanRoutine> planRoutines = await planRoutinesService
        .getPlanRoutinesByUserAccount(getUserAccount());
    UserTaskActivityGoal userTaskActivityGoal = await taskActivitiesService
        .getOrCreateUserTaskActivityGoalForDate(taskActivityGoal!, currentTime);
    int amount =
        (await taskActivitiesService.getTaskActivityRecordQuantitySumBetween(
                getUserAccount(), dayStartTime, dayEndTime)) ??
            0;
    logger.d("sum of today: ${amount}");
    bool isHalfGoalReached = amount >=
        (userTaskActivityGoal.targetGoalValue / 2);
    bool isGoalReached = amount >=
        userTaskActivityGoal.targetGoalValue;

    logger.d(userTaskActivityGoal.toJson());
    emit(TrackerDrinkWaterScreenState.initial(
        pageStatus: PageStatus.loaded,
        currentTime: currentTime,
        todaysStartTime: dayStartTime,
        todaysEndTime: dayEndTime,
        historyStartTime: historyStartTime,
        historyEndTime: historyEndTime,
        taskActivityGoal: taskActivityGoal,
        selectedDrinkType: DrinkType.availableDrinkTypes[0],
        planRoutines: planRoutines,
        userTaskActivityGoal: userTaskActivityGoal,
        isGoalReached: isGoalReached,
        isHalfGoalReached: isHalfGoalReached));
  }

  Future<TaskActivityGoal?> getTaskActivityGoalForUserAccount(
      UserAccount userAccount) async {
    List<TaskActivityGoal> taskActivityGoals =
        await taskActivitiesService.getTaskActivityGoalByUserAccountAndGoalType(
            userAccount, GoalType.dailyDrinkingWater, BooleanStatus.active);
    return Future.value(taskActivityGoals.firstOrNull);
  }

  updateDrinkType(DrinkType drinkType) {
    emit(state.copyWith(selectedDrinkType: drinkType));
  }

  updateTaskActivityGoal(TaskActivityGoal taskActivityGoal) {
    emit(state.copyWith(taskActivityGoal: taskActivityGoal));
  }

  Future<UserTaskActivityGoal> updateUserTaskActivityGoal(
      double todaysTotalValue) async {
    UserTaskActivityGoal userTaskActivityGoal = state.userTaskActivityGoal!;
    TaskActivityGoal taskActivityGoal = await taskActivitiesService
        .getTaskActivityGoal(userTaskActivityGoal.taskActivityGoalId);
    userTaskActivityGoal = userTaskActivityGoal.copyWith(
        currentGoalValue: todaysTotalValue,
        normalizedCurrentGoalValue:
            todaysTotalValue / taskActivityGoal.goalValue);
    await taskActivitiesService.updateTaskActivityGoal(taskActivityGoal);
    emit(state.copyWith(userTaskActivityGoal: userTaskActivityGoal));
    return userTaskActivityGoal;
  }

  bool shouldShowGoalModal(UserTaskActivityGoal userTaskActivityGoal) {
    if (!state.isGoalAchievedModalShown) {
      if (userTaskActivityGoal.currentGoalValue >=
          userTaskActivityGoal.targetGoalValue) {
        emit(state.copyWith(
            isGoalReached: true, isGoalAchievedModalShown: true));
      }
    }
    return true;
  }

  void setShowNativeAd(bool status) {
    emit(state.copyWith(showingNativeAd: status));
  }

  void setShowNotification(bool status) {
    emit(state.copyWith(showingNotification: status));
  }
}
