import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_reminders_plan_routine_details_cubit.freezed.dart';
part 'tracker_reminders_plan_routine_details_state.dart';

class TrackerRemindersPlanRoutineDetailsCubit
    extends Cubit<TrackerRemindersPlanRoutineDetailsState> {
  PlanRoutine planRoutine;

  TrackerRemindersPlanRoutineDetailsCubit({required this.planRoutine})
      : super(TrackerRemindersPlanRoutineDetailsState.initial(
            planRoutine: planRoutine));

  emitPlanRoutineDeleted(PlanRoutine planRoutine) {
    emit(state.copyWith(status: BooleanStatus.closed));
  }
}
