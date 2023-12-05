part of 'tracker_delete_plan_routine_cubit.dart';

@freezed
class TrackerDeletePlanRoutineState with _$TrackerDeletePlanRoutineState {
  const factory TrackerDeletePlanRoutineState.initial(
      {required ApiStateStatus apiStatus, PlanRoutine? planRoutine,
        }
      ) = _Initial;
}
