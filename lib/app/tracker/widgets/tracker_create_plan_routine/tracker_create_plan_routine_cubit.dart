import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart';
import 'package:beebloom_water_tracker/app/core/utils/app_notification_utils.dart';
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_create_plan_routine_cubit.freezed.dart';
part 'tracker_create_plan_routine_state.dart';

class TrackerCreatePlanRoutineCubit
    extends BaseCubit<TrackerCreatePlanRoutineState> {
  late PlanRoutinesService planRoutinesService;
  late AwesomeNotificationsService awesomeNotificationsService;

  TrackerCreatePlanRoutineCubit({required super.context})
      : super(
            initialState: const TrackerCreatePlanRoutineState.initial(
                apiStatus: ApiStateStatus.initial)) {
    planRoutinesService = GetIt.instance<PlanRoutinesService>();
    awesomeNotificationsService =
        GetIt.instance<AwesomeNotificationsService>();
  }

  savePlanRoutine(PlanRoutine planRoutine) async {
    emit(state.copyWith(apiStatus: ApiStateStatus.loading));

    int planRoutineId =
        await planRoutinesService.savePlanRoutine(planRoutine);

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

    await awesomeNotificationsService.createNotification(
        context: context,
        content: AppNotificationutils.getNotificationContentFromPlanRoutine(
            planRoutine: planRoutine, id: planRoutineId),
        schedule: AppNotificationutils.getNotificationScheduleFromPlanRoutine(
            planRoutine: planRoutine),
        actionButtons: [
          AppNotificationutils.getNotificationActionButtonFromPlanRoutine(
              planRoutine: planRoutine)
        ]);
    emit(state.copyWith(
        apiStatus: ApiStateStatus.created, planRoutine: planRoutine));
  }
}
