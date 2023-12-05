import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';


part 'tracker_get_next_plan_routine_by_user_account_state.dart';
part 'tracker_get_next_plan_routine_by_user_account_cubit.freezed.dart';

class TrackerGetNextPlanRoutineByUserAccountCubit extends BaseCubit<TrackerGetNextPlanRoutineByUserAccountState> {
  late PlanRoutinesService planRoutinesService;

  TrackerGetNextPlanRoutineByUserAccountCubit({required super.context})
      : super(initialState: TrackerGetNextPlanRoutineByUserAccountState.initial(timeOfDay: TimeOfDay.now())){
    planRoutinesService = GetIt.instance<PlanRoutinesService>();
    getNextPlanRoutineByUserAccount(getUserAccount());
  }


  getNextPlanRoutineByUserAccount(UserAccount userAccount) async {
    PlanRoutine? planRoutine = await planRoutinesService
        .getNextPlanRoutineByUserAccount(getUserAccount(), state.timeOfDay);
    if (planRoutine != null) {
      emit(state.copyWith(planRoutine: planRoutine));
    }
  }
}
