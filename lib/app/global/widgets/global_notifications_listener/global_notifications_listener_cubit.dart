import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/global/notifications_listener_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'global_notifications_listener_cubit.freezed.dart';
part 'global_notifications_listener_state.dart';

class GlobalNotificationsListenerCubit
    extends BaseCubit<GlobalNotificationsListenerState> {
  late NotificationController notificationsListenerService;

  GlobalNotificationsListenerCubit({required super.context})
      : super(initialState: const GlobalNotificationsListenerState.initial()) {
    notificationsListenerService =
        GetIt.instance<NotificationController>();
    // this.setupListeners();
  }

  setupListeners() {
    // this.notificationsListenerService.setupListeners();
  }
}
