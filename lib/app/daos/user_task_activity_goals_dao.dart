import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/user_task_activity_goals.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'user_task_activity_goals_dao.g.dart';

@singleton
@DriftAccessor(tables: [UserTaskActivityGoals])
class UserTaskActivityGoalsDao extends DatabaseAccessor<AppDatabase>
    with _$UserTaskActivityGoalsDaoMixin {
  UserTaskActivityGoalsDao(super.attachedDatabase);

  Future<int> saveUserTaskActivityGoal(
      UserTaskActivityGoal userTaskActivityGoal) {
    return into(userTaskActivityGoals)
        .insert(userTaskActivityGoal.toCompanion(false));
  }

  Future<int> updateUserTaskActivityGoal(
      UserTaskActivityGoal userTaskActivityGoal) {
    return into(userTaskActivityGoals)
        .insertOnConflictUpdate(userTaskActivityGoal.toCompanion(false));
  }

  Future<UserTaskActivityGoal?> getUserTaskActivityGoal(
      int userTaskActityGoalId) {
    final query = select(userTaskActivityGoals)
      ..where((tbl) => tbl.userTaskActivityGoalId.equals(userTaskActityGoalId));
    return query.getSingle();
  }

  Future<List<UserTaskActivityGoal>> getUserTaskActivityGoalBetween(
      DateTime startTime, DateTime endTime, TaskActivityGoal taskActivityGoal) {
    final query = (select(userTaskActivityGoals)
      ..where((tbl) =>
          (tbl.taskActivityGoalId.equals(taskActivityGoal.taskActivityGoalId!) &
              tbl.startTime.equals(startTime) &
              tbl.endTime.equals(endTime))));

    return query.get();
  }
}
