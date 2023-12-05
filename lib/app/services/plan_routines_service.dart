import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/drink_type_and_plan_routines.dart';
import 'package:beebloom_water_tracker/app/daos/plan_routines_dao.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class PlanRoutinesService {
  final PlanRoutinesDao planRoutinesDao;

  const PlanRoutinesService({
    required this.planRoutinesDao,
  });

  Future<int> savePlanRoutine(PlanRoutine planRoutine) {
    return planRoutinesDao.savePlanRoutine(planRoutine);
  }

  Future<int> deletePlanRoutine(PlanRoutine planRoutine) {
    return planRoutinesDao.deletePlanRoutine(planRoutine);
  }

  Future<List<PlanRoutine>> getPlanRoutinesByUserAccount(
      UserAccount userAccount) {
    return planRoutinesDao.getPlanRoutinesByUserAccount(userAccount);
  }

  Future<PlanRoutine?> getNextPlanRoutineByUserAccount(
      UserAccount userAccount, TimeOfDay timeOfDay) async {
    List<PlanRoutine> planRoutines =
        await getPlanRoutinesByUserAccount(userAccount);
    if (planRoutines.isEmpty) {
      return Future.value(null);
    }
    planRoutines.sort((a, b) => a.time.compareTo(b.time));

    for (int i = 0; i < planRoutines.length; i++) {
      DateTime dateTime = planRoutines[i].time;
      TimeOfDay routineTimeOfDay =
          TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
      if (AppDateTimeUtils.compareTimeOfDay(routineTimeOfDay, timeOfDay) > 0) {
        return Future.value(planRoutines[i]);
      }
    }
    return Future.value(planRoutines[0]);
  }

  Future<List<DrinkTypeAndPlanRoutines>>
      getDrinkTypeAndPlanRoutinesByUserAccount(UserAccount userAccount) async {
    List<PlanRoutine> planRoutines =
        await getPlanRoutinesByUserAccount(userAccount);
    if (planRoutines.isEmpty) {
      return Future.value(List.empty());
    }
    Map<String, List<PlanRoutine>> planRoutinesMap = {};
    for (var element in planRoutines) {
      List<PlanRoutine>? existingRoutines = planRoutinesMap[element.drinkType];
      existingRoutines ??= List.empty(growable: true);
      existingRoutines.add(element);
      planRoutinesMap[element.drinkType] = existingRoutines;
    }

    List<DrinkTypeAndPlanRoutines> drinkTypeAndPlanRoutines = planRoutinesMap
        .entries
        .map((entry) => DrinkTypeAndPlanRoutines(
            drinkType: entry.key, planRoutines: entry.value))
        .toList();
    return Future.value(drinkTypeAndPlanRoutines);
  }
}
