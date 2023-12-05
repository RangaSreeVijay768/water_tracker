part of 'notifications_received_notifications_cubit.dart';

@freezed
class NotificationsReceivedNotificationsState with _$NotificationsReceivedNotificationsState {
  const factory NotificationsReceivedNotificationsState.initial(
  {@Default(BooleanStatus.initial) BooleanStatus status,
    ReceivedAction? action}) = _Initial;
}
