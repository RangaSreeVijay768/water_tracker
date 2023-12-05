import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_custom_popup_menu_cubit.freezed.dart';
part 'tracker_custom_popup_menu_state.dart';

class TrackerCustomPopupMenuCubit
    extends BaseCubit<TrackerCustomPopupMenuState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerCustomPopupMenuCubit({required super.context})
      : super(initialState: const TrackerCustomPopupMenuState.initial()) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
    getTaskActivityGoalForUserAccount(getUserAccount());
  }

  Future<TaskActivityGoal?> getTaskActivityGoalForUserAccount(
      UserAccount userAccount) async {
    List<TaskActivityGoal> taskActivityGoals = await taskActivitiesService
        .getTaskActivityGoalByUserAccountAndGoalType(
            userAccount, GoalType.dailyDrinkingWater, BooleanStatus.active);
    emit(state.copyWith(taskActivityGoal: taskActivityGoals.firstOrNull));
    return null;
  }

  updateTaskActivityGoal(TaskActivityGoal taskActivityGoal) {
    emit(state.copyWith(taskActivityGoal: taskActivityGoal));
  }
}
