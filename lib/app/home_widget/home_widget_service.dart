import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:get_it/get_it.dart';
import 'package:home_widget/home_widget.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeWidgetService {
  static String groupId = "com.7dotss.hydromate.hydromate-widget";

  static Future<bool?> initializeService() {
    return HomeWidget.setAppGroupId(groupId);
  }

  static Future<bool?> saveWidgetData<T>(String id, T data) {
    return HomeWidget.saveWidgetData(id, data);
  }

  static Future<bool?> updateWidget() {
    return HomeWidget.updateWidget(
        name: 'HydromateWidgetExtensionProvider',
        qualifiedAndroidName:
            'com.sevendotss.beebloom_water_tracker.HydromateHomeWidgetProvider',
        iOSName: 'HydromateWidgetExtension');
  }

  Future<T?> getWidgetData<T>(String id, T defaultValue) {
    return HomeWidget.getWidgetData(id, defaultValue: defaultValue);
  }

  static Future<bool?> updateLiveWidgetData() async {
    UserAccountsService userAccountsService =
        GetIt.instance<UserAccountsService>();
    PlanRoutinesService planRoutinesService =
        GetIt.instance<PlanRoutinesService>();
    TaskActivitiesService taskActivitiesService =
        GetIt.instance<TaskActivitiesService>();

    DateTime currentTime = DateTime.now();
    UserAccount userAccount =
        await userAccountsService.getOrCreateDefaultUserAccount();
    PlanRoutine? planRoutine =
        await planRoutinesService.getNextPlanRoutineByUserAccount(userAccount,
            AppDateTimeUtils.getTimeOfDayFromDateTime(DateTime.now()));
    List<TaskActivityGoal> taskActivityGoals =
        await taskActivitiesService.getTaskActivityGoalByUserAccountAndGoalType(
            userAccount, GoalType.dailyDrinkingWater, BooleanStatus.active);
    int? todaysSum =
        await taskActivitiesService.getTaskActivityRecordQuantitySumBetween(
            userAccount,
            AppDateTimeUtils.getStartTimeOfDateTime(currentTime),
            AppDateTimeUtils.getEndTimeOfDateTime(currentTime));

    List<Future<bool?>> allFutures = List.empty(growable: true);
    if (planRoutine != null) {
      Future<bool?> reminderTimeUpdate = saveWidgetData(
          "reminders",
          AppDateTimeUtils.formatDateTime(
              planRoutine.time, AppDateTimeUtils.defaultTimeForm));
      Future<bool?> selectedDrinkUpdate = saveWidgetData("selectedDrink",
          DrinkType.findByDrinkType(planRoutine.drinkType).humanReadable);
      Future<bool?> selectedDrinkQuantity = saveWidgetData(
          "quantity",
          DrinkType.findByDrinkType(planRoutine.drinkType).quantity.toString() +
              "ml");
      allFutures.add(reminderTimeUpdate);
      allFutures.add(selectedDrinkUpdate);
      allFutures.add(selectedDrinkQuantity);
    }

    String todaysSumString = ((todaysSum ?? 0) / 1000).toString();
    if (taskActivityGoals.isNotEmpty) {
      TaskActivityGoal taskActivityGoal = taskActivityGoals.first;
      Future<bool?> todaysProgressUpdate =
          saveWidgetData("progressMade", todaysSumString + "l");
      Future<bool?> totalProgressUpdate = saveWidgetData("totalProgress",
         "/"+ (taskActivityGoal.goalValue / 1000).toString() + "l");

      allFutures.add(todaysProgressUpdate);
      allFutures.add(totalProgressUpdate);
    }

    if (allFutures.isNotEmpty) {
      await Future.wait(allFutures);
      await updateWidget();
    }
  }
}
