import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/drink_type_and_plan_routines.dart';
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_get_drink_type_and_plan_routine_by_user_account_state.dart';

part 'tracker_get_drink_type_and_plan_routine_by_user_account_cubit.freezed.dart';

class TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit
    extends Cubit<TrackerGetDrinkTypeAndPlanRoutineByUserAccountState> {
  late PlanRoutinesService planRoutinesService;

  TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit(
      {required UserAccount userAccount})
      : super(TrackerGetDrinkTypeAndPlanRoutineByUserAccountState.initial(
            userAccount: userAccount)) {
    planRoutinesService = GetIt.instance<PlanRoutinesService>();
    getDrinkTypeAndPlanRoutinesByUserAccount(userAccount);
  }

  getDrinkTypeAndPlanRoutinesByUserAccount(UserAccount userAccount) async {
    List<DrinkTypeAndPlanRoutines> drinkTypeAndPlanRoutines = await planRoutinesService
        .getDrinkTypeAndPlanRoutinesByUserAccount(userAccount);
    print("drink type : ");
    print(drinkTypeAndPlanRoutines);
    emit(state.copyWith(drinkTypeAndPlanRoutines: drinkTypeAndPlanRoutines));
  }
}
