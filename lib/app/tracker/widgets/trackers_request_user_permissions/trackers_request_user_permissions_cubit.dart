
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'trackers_request_user_permissions_cubit.freezed.dart';

part 'trackers_request_user_permissions_state.dart';

class TrackersRequestUserPermissionsCubit
    extends BaseCubit<TrackersRequestUserPermissionsState> {
  late AwesomeNotificationsService awesomeNotificationsService;

  TrackersRequestUserPermissionsCubit({required super.context})
      : super(
            initialState: TrackersRequestUserPermissionsState.initial(
                notificationChannel:
                    AppNotificationConstants.defaultChannelName,
                notificationPermissions: NotificationPermission.values
                    .toSet()
                    .difference({
                      NotificationPermission.Provisional,
                      NotificationPermission.Car,
                      NotificationPermission.CriticalAlert,
                      NotificationPermission.OverrideDnD
                    })
                    .toList())) {
    awesomeNotificationsService =
        GetIt.instance<AwesomeNotificationsService>();
    checkUserPermissions();
  }

  requestUserPermissions() async {
    await AwesomeNotificationsService.requestUserPermissions(context,
        channelKey: state.notificationChannel,
        permissionList: state.notificationPermissions);
  }

  checkUserPermissions() async {
    List<NotificationPermission> allowedPermissions =
        await AwesomeNotificationsService.checkNotificationPermissions(
            channelKey: state.notificationChannel,
            permissionList: state.notificationPermissions);
    emit(state.copyWith(allowedPermissions: allowedPermissions));
  }
}
