import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/beebloom_client.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times_response.dart';
import 'package:beebloom_water_tracker/app/core/network/rest_client.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_drink_set_sleep_cycle_step_cubit.freezed.dart';

part 'tracker_drink_set_sleep_cycle_step_state.dart';

class TrackerDrinkSetSleepCycleStepCubit
    extends BaseCubit<TrackerDrinkSetSleepCycleStepState> {
  late UserAccountsService userAccountsService;
  late BeebloomClient beebloomClient;
  late BeebloomService beebloomService;

  TrackerDrinkSetSleepCycleStepCubit(
      {required super.context, TimeOfDay? timeOfDay})
      : super(
            initialState: TrackerDrinkSetSleepCycleStepState.initial(
                selectedSleepTime: timeOfDay ?? const TimeOfDay(hour: 22, minute: 0),
                selectedWakeUpTime:
                    timeOfDay ?? const TimeOfDay(hour: 6, minute: 0))) {
    userAccountsService = GetIt.instance<UserAccountsService>();
    beebloomClient = GetIt.instance<BeebloomClient>();
    beebloomService = GetIt.instance<BeebloomService>();
    getSleepTime();
  }

  setSleepTime(TimeOfDay dateTime) async {
    await userAccountsService.updateUserAccount(getUserAccount(),
        sleepTime: dateTime);
    emit(state.copyWith(selectedSleepTime: dateTime));
  }

  selectWakeupTime(TimeOfDay dateTime) async {
    await userAccountsService.updateUserAccount(getUserAccount(),
        wakeUpTime: dateTime);
    emit(state.copyWith(selectedWakeUpTime: dateTime));
  }

  getSleepTime() async {
    final request = GetDrinkWaterPlanExecutionTimesRequest(
        tea: 1,
        coffee: 1,
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        hours: 3);
    List<GetDrinkWaterPlanExecutionTimesResponse> response =
        await beebloomService.getDrinkWaterPlanExecutions(request);
    logger.d(response);
  }
}
