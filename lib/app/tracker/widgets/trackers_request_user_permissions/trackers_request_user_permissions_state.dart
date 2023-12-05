part of 'trackers_request_user_permissions_cubit.dart';

@freezed
class TrackersRequestUserPermissionsState
    with _$TrackersRequestUserPermissionsState {
  const factory TrackersRequestUserPermissionsState.initial(
      {required String notificationChannel,
      required List<NotificationPermission> notificationPermissions,
       List<NotificationPermission>? allowedPermissions}) = _Initial;
}
