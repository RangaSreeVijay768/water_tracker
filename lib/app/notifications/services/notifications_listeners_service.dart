import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class NotificationListenerService {
  TaskActivitiesService taskActivitiesService;



  handleNotificationReceivedAction(
      ReceivedAction receivedAction, UserAccount userAccount) async {
    if (receivedAction.buttonKeyPressed ==
        AppNotificationConstants.yesActionKey) {
      await onYesActionKeyPressed(userAccount);
    } else if (receivedAction.buttonKeyPressed ==
        AppNotificationConstants.noActionKey) {
      onNoActionKeyPressed();
    } else {
      onNotificationPressed();
    }
    return Future(() => true);
  }

  onYesActionKeyPressed(UserAccount userAccount) async {
    print("YES Pressed");
    await taskActivitiesService.saveTaskActivityRecord(TaskActivityRecord(
        drinkType: "WATER",
        quantity: 250,
        userAccountId: userAccount.userAccountId!,
        createdTime: DateTime.now(),
        lastUpdatedTime: DateTime.now()));
  }

  onNoActionKeyPressed() {
    print("NO Clicked");
  }

  onNotificationPressed() {
    print("Notification Clicked");
  }

  NotificationListenerService({
    required this.taskActivitiesService,
  });
}
