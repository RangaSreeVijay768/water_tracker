import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@singleton
class NotificationController {
  late UserAccountsService userAccountsService;
  late TaskActivitiesService taskActivitiesService;

  NotificationController();

  static setupListeners() {
  }

  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    UserAccountsService userAccountsService =
        GetIt.instance<UserAccountsService>();
    TaskActivitiesService taskActivitiesService =
        GetIt.instance<TaskActivitiesService>();
    String actionButtonKey = receivedAction.buttonKeyInput;
    logger.e("${actionButtonKey}recieved");
    DrinkType drinkType = DrinkType.findByActionButtonKey(actionButtonKey);
    if (drinkType != null) {
      UserAccount userAccount =
          await userAccountsService.getOrCreateDefaultUserAccount();
      await taskActivitiesService.saveTaskActivityRecord(TaskActivityRecord(
          drinkType: drinkType.drinkType,
          quantity: drinkType.quantity,
          userAccountId: userAccount.userAccountId!,
          createdTime: DateTime.now(),
          lastUpdatedTime: DateTime.now()));
    } else {
      logger.e("No action button recieved $actionButtonKey");
    }
    return Future(() => true);
  }

  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
  }
}
