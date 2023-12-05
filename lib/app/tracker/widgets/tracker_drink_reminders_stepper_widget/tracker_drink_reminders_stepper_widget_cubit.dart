import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart';
import 'package:beebloom_water_tracker/app/core/utils/app_notification_utils.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_add_reminder_step/tracker_drink_add_reminder_step_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_schedule_drink_step/tracker_drink_schedule_drink_step_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_set_sleep_cycle_step/tracker_drink_set_sleep_cycle_step_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_drink_reminders_stepper_widget_cubit.freezed.dart';

part 'tracker_drink_reminders_stepper_widget_state.dart';

class TrackerDrinkRemindersStepperWidgetCubit
    extends BaseCubit<TrackerDrinkRemindersStepperWidgetState> {
  late PlanRoutinesService planRoutineService;
  late AwesomeNotificationsService awesomeNotificationsService;

  TrackerDrinkRemindersStepperWidgetCubit({required super.context})
      : super(
            initialState: const TrackerDrinkRemindersStepperWidgetState.initial(
                reminderCreationStatus: BooleanStatus.initial)) {
    planRoutineService = GetIt.instance<PlanRoutinesService>();
    awesomeNotificationsService =
        GetIt.instance<AwesomeNotificationsService>();
  }

  updateState(
      {TrackerDrinkSetSleepCycleStepState? step1State,
      TrackerDrinkAddReminderStepState? step2State,
      TrackerDrinkScheduleDrinkStepState? step3State}) {
    emit(state.copyWith(
        step1State: step1State,
        step2State: step2State,
        step3State: step3State));
  }

  addDrinkReminders(Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap) async {
    List<PlanRoutine> planRoutines = List.empty(growable: true);
    for (var key in drinkSchedulesMap.keys) {
      for (var element in drinkSchedulesMap[key]!) {
        planRoutines.add(PlanRoutine(
            planRoutineName: 'Drink ${key.humanReadable}',
            drinkType: key.drinkType,
            userAccountId: getUserAccount().userAccountId!,
            time: AppDateTimeUtils.getDateTimeFromTimeOfDay(element),
            notificationStatus: BooleanStatus.pending,
            createdTime: DateTime.now(),
            lastUpdatedTime: DateTime.now()));
      }
    }
    List<NotificationPermission> notificationPermission =
        await AwesomeNotificationsService.checkNotificationPermissions(
            permissionList:
                AppNotificationConstants.neededNotificationPermissions);
    if (notificationPermission.length !=
        AppNotificationConstants.neededNotificationPermissions.length) {
      await AwesomeNotificationsService.requestUserPermissions(context,
          channelKey: AppNotificationConstants.defaultChannelKey,
          permissionList:
              AppNotificationConstants.neededNotificationPermissions);
    }

    for (PlanRoutine planRoutine in planRoutines) {
      int planRoutineId = await planRoutineService.savePlanRoutine(planRoutine);
      await awesomeNotificationsService.createNotification(
          context: context,
          content: AppNotificationutils.getNotificationContentFromPlanRoutine(
              planRoutine: planRoutine, id: planRoutineId),
          schedule: AppNotificationutils.getNotificationScheduleFromPlanRoutine(
              planRoutine: planRoutine),
        actionButtons: [AppNotificationutils.getNotificationActionButtonFromPlanRoutine(planRoutine: planRoutine)]
      );
    }
    emit(state.copyWith(reminderCreationStatus: BooleanStatus.success));
  }
}
