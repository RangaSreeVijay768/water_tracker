import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../core/database/database.dart';
import '../../../services/plan_routines_service.dart';
import '../tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';

part 'tracker_delete_plan_routine_cubit.freezed.dart';
part 'tracker_delete_plan_routine_state.dart';

class TrackerDeletePlanRoutineCubit
    extends Cubit<TrackerDeletePlanRoutineState> {
  late PlanRoutinesService planRoutinesService;
  late AwesomeNotificationsService awesomeNotificationsService;

  TrackerDeletePlanRoutineCubit()
      : super(const TrackerDeletePlanRoutineState.initial(
            apiStatus: ApiStateStatus.initial)) {
    planRoutinesService = GetIt.instance<PlanRoutinesService>();
    awesomeNotificationsService =
        GetIt.instance<AwesomeNotificationsService>();
  }

  deletePlanRoutine(PlanRoutine planRoutine) async {
    await planRoutinesService.deletePlanRoutine(planRoutine);
    await awesomeNotificationsService
        .cancelNotification(planRoutine.planRoutineId!);
    emit(state.copyWith(
        apiStatus: ApiStateStatus.completed, planRoutine: planRoutine));
  }
}
