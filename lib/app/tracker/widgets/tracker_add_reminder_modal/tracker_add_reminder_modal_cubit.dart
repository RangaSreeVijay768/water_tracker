import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_add_reminder_modal_cubit.freezed.dart';

part 'tracker_add_reminder_modal_state.dart';

class TrackerAddReminderModalCubit
    extends BaseModalCubit<TrackerAddReminderModalState> {
  TrackerAddReminderModalCubit({required super.context})
      : super(initialState: TrackerAddReminderModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }

  checkNotificationPermissions() {
    // AwesomeNotificationsService
  }
}
