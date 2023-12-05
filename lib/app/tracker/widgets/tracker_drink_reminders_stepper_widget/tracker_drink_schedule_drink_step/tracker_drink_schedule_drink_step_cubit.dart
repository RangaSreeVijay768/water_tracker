import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times_response.dart';
import 'package:beebloom_water_tracker/app/core/network/rest_client.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/models/drink_type_and_plan_routines.dart';

part 'tracker_drink_schedule_drink_step_cubit.freezed.dart';

part 'tracker_drink_schedule_drink_step_state.dart';

class TrackerDrinkScheduleDrinkStepCubit
    extends BaseCubit<TrackerDrinkScheduleDrinkStepState> {
  late BeebloomService beebloomService;

  TrackerDrinkScheduleDrinkStepCubit({
    required super.context,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required Map<DrinkType, int> drinkTypeCountMap,
  }) : super(
            initialState: TrackerDrinkScheduleDrinkStepState.initial(
                startTime: AppDateTimeUtils.getDateTimeFromTimeOfDay(startTime),
                endTime: AppDateTimeUtils.getDateTimeFromTimeOfDay(endTime),
                drinkTypeCountMap: drinkTypeCountMap,
                drinkSchedulesMap: <DrinkType, List<TimeOfDay>>{})) {
    beebloomService = GetIt.instance<BeebloomService>();
    getDrinkExecutionTimes(
      startTime: startTime,
      endTime: endTime,
      drinkTypeCountMap: drinkTypeCountMap,
    );
  }

  getDrinkExecutionTimes(
      {required TimeOfDay startTime,
      required TimeOfDay endTime,
      required Map<DrinkType, int> drinkTypeCountMap}) async {
    List<GetDrinkWaterPlanExecutionTimesResponse> response = await beebloomService
        .getDrinkWaterPlanExecutions(GetDrinkWaterPlanExecutionTimesRequest(
            startTime: AppDateTimeUtils.getDateTimeFromTimeOfDay(startTime),
            endTime: AppDateTimeUtils.getDateTimeFromTimeOfDay(endTime),
            coffee: drinkTypeCountMap[DrinkType.findByDrinkType('COFFEE')],
            tea: drinkTypeCountMap[DrinkType.findByDrinkType('TEA')],
            hours: 3));
    Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap =
        convertGetDrinkWaterPlanExecutionTimesResponseToDrinkSchedulesMap(
            response);
    emit(state.copyWith(
        drinkWaterPlanExecutionTimes: response,
        drinkSchedulesMap: drinkSchedulesMap));
  }

  Map<DrinkType, List<TimeOfDay>>
      convertGetDrinkWaterPlanExecutionTimesResponseToDrinkSchedulesMap(
          List<GetDrinkWaterPlanExecutionTimesResponse> response) {
    Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap = {};
    for (var element in DrinkType.availableDrinkTypes) {
      drinkSchedulesMap[element] = List.empty(growable: true);
    }
    if (response.isNotEmpty) {
      for (var element in response) {
        logger.d(element);
        drinkSchedulesMap[DrinkType.findByDrinkType(element.drinkType!)]!
            .add(AppDateTimeUtils.getTimeOfDayFromDateTime(element.localTime!));
      }
    }
    return drinkSchedulesMap;
  }

  addDrinkTypeSlot(DrinkType drinkType, TimeOfDay timeOfDay) {
    emit(state.copyWith(drinkSchedulesMap: {}));
    List<TimeOfDay> timeOfDays = state.drinkSchedulesMap[drinkType]!;
    timeOfDays.add(timeOfDay);
    state.drinkSchedulesMap[drinkType] = timeOfDays;
    emit(state.copyWith(drinkSchedulesMap: state.drinkSchedulesMap));
  }

  removeDrinkTypeSlot(DrinkType drinkType, TimeOfDay timeOfDay) {
    Map<DrinkType, List<TimeOfDay>> map = Map.from(state.drinkSchedulesMap);
    List<TimeOfDay> timeOfDays = state.drinkSchedulesMap[drinkType]!;
    emit(state.copyWith(drinkSchedulesMap: {}));
    logger.d(timeOfDays);
    timeOfDays.remove(timeOfDay);

    logger.d(timeOfDays);
    map[drinkType] = timeOfDays;
    emit(state.copyWith(drinkSchedulesMap: map));
  }
}
