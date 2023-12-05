part of 'tracker_reminders_plan_routine_details_cubit.dart';

@freezed
class TrackerRemindersPlanRoutineDetailsState
    with _$TrackerRemindersPlanRoutineDetailsState {
  const factory TrackerRemindersPlanRoutineDetailsState.initial(
      {required PlanRoutine planRoutine,
      @Default(BooleanStatus.active) BooleanStatus status}) = _Initial;
}
