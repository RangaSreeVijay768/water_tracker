import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'notifications_schedule_notification_cubit.freezed.dart';

part 'notifications_schedule_notification_state.dart';

class NotificationsScheduleNotificationCubit
    extends BaseCubit<NotificationsScheduleNotificationState> {
  late AwesomeNotificationsService awesomeNotificationsService;

  NotificationsScheduleNotificationCubit({required super.context})
      : super(initialState: const NotificationsScheduleNotificationState.initial()) {
    awesomeNotificationsService =
        GetIt.instance<AwesomeNotificationsService>();
  }

  createNotification() async {
    await awesomeNotificationsService.createNotification(
        context: context,
        content: NotificationContent(id: DateTime
            .now()
            .minute, channelKey: AppNotificationConstants.defaultChannelKey,
          title: 'Hello test',
          summary: 'Hello test'
        ),

        actionButtons: [
    NotificationActionButton(key: DrinkType.availableDrinkTypes[0].
        actionButtonKey,
        label: DrinkType.availableDrinkTypes[0].actionButtonText)]);
  }
}
