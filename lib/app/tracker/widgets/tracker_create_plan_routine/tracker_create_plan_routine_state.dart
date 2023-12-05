part of 'tracker_create_plan_routine_cubit.dart';

@freezed
class TrackerCreatePlanRoutineState with _$TrackerCreatePlanRoutineState {
  const factory TrackerCreatePlanRoutineState.initial(
      {required ApiStateStatus apiStatus, PlanRoutine? planRoutine,
        @Default(true) bool isButtonEnabled,
      }) = _Initial;
}
