part of 'tracker_get_drink_type_and_plan_routine_by_user_account_cubit.dart';

@freezed
class TrackerGetDrinkTypeAndPlanRoutineByUserAccountState
    with _$TrackerGetDrinkTypeAndPlanRoutineByUserAccountState {
  const factory TrackerGetDrinkTypeAndPlanRoutineByUserAccountState.initial(
      {required UserAccount userAccount,
      List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines}) = _Initial;
}
