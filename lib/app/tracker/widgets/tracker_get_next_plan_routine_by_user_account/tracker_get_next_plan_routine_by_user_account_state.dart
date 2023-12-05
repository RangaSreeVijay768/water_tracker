part of 'tracker_get_next_plan_routine_by_user_account_cubit.dart';

@freezed
class TrackerGetNextPlanRoutineByUserAccountState with _$TrackerGetNextPlanRoutineByUserAccountState {
  const factory TrackerGetNextPlanRoutineByUserAccountState.initial(
      {required TimeOfDay timeOfDay,
        PlanRoutine? planRoutine,
      }) = _Initial;
}
