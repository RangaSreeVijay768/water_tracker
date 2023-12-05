import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/notifications/services/notifications_listeners_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'notifications_received_notifications_cubit.freezed.dart';

part 'notifications_received_notifications_state.dart';

class NotificationsReceivedNotificationsCubit
    extends BaseCubit<NotificationsReceivedNotificationsState> {
  late NotificationListenerService notificationListenerService;

  NotificationsReceivedNotificationsCubit({required super.context})
      : super(initialState: const NotificationsReceivedNotificationsState.initial()) {
    notificationListenerService =
        GetIt.instance<NotificationListenerService>();

    setupNotificationListeners();
  }

  setupNotificationListeners() {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: (ReceivedAction receivedAction) async {
     await notificationListenerService
          .handleNotificationReceivedAction(receivedAction, getUserAccount());
      return Future.value(true);
      print("Listening for notification Events");
    });
  }
}
