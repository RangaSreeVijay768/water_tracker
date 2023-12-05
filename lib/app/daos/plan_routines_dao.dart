import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/plan_routines.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'plan_routines_dao.g.dart';

@singleton
@DriftAccessor(tables: [PlanRoutines])
class PlanRoutinesDao extends DatabaseAccessor<AppDatabase>
    with _$PlanRoutinesDaoMixin {
  PlanRoutinesDao(super.attachedDatabase);

  Future<List<PlanRoutine>> getPlanRoutinesByUserAccount(
      UserAccount userAccount) {
    Future<List<PlanRoutine>> planRoutinesList = ((select(planRoutines)
          ..where(
              (tbl) => tbl.userAccountId.equals(userAccount.userAccountId!))))
        .get();
    return planRoutinesList;
  }

  Future<int> savePlanRoutine(PlanRoutine planRoutine) {
    return into(planRoutines).insert(planRoutine.toCompanion(false));
  }



  Future<int> deletePlanRoutine(PlanRoutine planRoutine){
    return delete(planRoutines).delete(planRoutine);
  }
}
