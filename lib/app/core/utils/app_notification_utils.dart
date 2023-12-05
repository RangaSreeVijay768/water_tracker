import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';

abstract class AppNotificationutils {
  static NotificationContent getNotificationContentFromPlanRoutine(
      {required PlanRoutine planRoutine, required int id}) {
    DrinkType drinkType = DrinkType.findByDrinkType(planRoutine.drinkType);
    NotificationContent notificationContent = NotificationContent(
        id: id,
        channelKey: AppNotificationConstants.defaultChannelKey,
        title: drinkType.notificationTitle,
        body: drinkType.notificationDescription);

    return notificationContent;
  }

  static NotificationCalendar getNotificationScheduleFromPlanRoutine(
      {required PlanRoutine planRoutine}) {
    NotificationCalendar notificationCalendar = NotificationCalendar(
        hour: planRoutine.time.hour,
        minute: planRoutine.time.minute,
        second: planRoutine.time.second,
        repeats: true);
    return notificationCalendar;
  }

  static NotificationActionButton getNotificationActionButtonFromPlanRoutine(
      {required PlanRoutine planRoutine}) {
    DrinkType drinkType = DrinkType.findByDrinkType(planRoutine.drinkType);

    NotificationActionButton notificationActionButton =
        NotificationActionButton(
            key: drinkType.actionButtonKey, label: drinkType.actionButtonText);
    return notificationActionButton;
  }
}
