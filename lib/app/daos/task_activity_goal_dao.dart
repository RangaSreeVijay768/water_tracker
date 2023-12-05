import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/core/database/task_activity_goal.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'task_activity_goal_dao.g.dart';

@singleton
@DriftAccessor(tables: [TaskActivityGoals])
class TaskActivityGoalsDao extends DatabaseAccessor<AppDatabase>
    with _$TaskActivityGoalsDaoMixin {
  TaskActivityGoalsDao(super.attachedDatabase);

  Future<List<TaskActivityGoal>> getTaskActivityGoalByUserAccountAndGoalType(
      UserAccount userAccount, GoalType goalType, BooleanStatus status) {
    Future<List<TaskActivityGoal>> taskActivityGoalsList =
        ((select(taskActivityGoals)
              ..where((tbl) =>
                  tbl.userAccountId.equals(userAccount.userAccountId!) &
                  tbl.goalType.equalsValue(goalType) &
                  tbl.status.equalsValue(status))))
            .get();

    return taskActivityGoalsList;
  }

  Future<int> saveTaskActivityGoal(TaskActivityGoal taskActivityGoal) {
    return into(taskActivityGoals).insert(taskActivityGoal.toCompanion(false));
  }

  Future<TaskActivityGoal> getTaskActivityGoal(int taskActivityGoalId){
    return  (select(taskActivityGoals)
      ..where((tbl) => tbl.taskActivityGoalId.equals(taskActivityGoalId)))
        .getSingle();
  }

  Future<int> updateTaskActivityGoal(TaskActivityGoal taskActivityGoal){
    return into(taskActivityGoals).insertOnConflictUpdate(taskActivityGoal.toCompanion(false));
  }
}
