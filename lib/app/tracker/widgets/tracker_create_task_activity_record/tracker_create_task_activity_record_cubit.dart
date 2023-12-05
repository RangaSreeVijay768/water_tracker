import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_create_task_activity_record_cubit.freezed.dart';

part 'tracker_create_task_activity_record_state.dart';

class TrackerCreateTaskActivityRecordCubit
    extends BaseCubit<TrackerCreateTaskActivityRecordState> {
  late TaskActivitiesService taskActivitiesService;

  TrackerCreateTaskActivityRecordCubit({required super.context})
      : super(
            initialState:
                const TrackerCreateTaskActivityRecordState.initial()) {
    taskActivitiesService = GetIt.instance<TaskActivitiesService>();
  }

  Future<int> createTaskActivityRecord({required DrinkType drinkType}) async {
    TaskActivityRecord taskActivityRecord = TaskActivityRecord(
        drinkType: drinkType.drinkType,
        quantity: drinkType.quantity,
        userAccountId: getUserAccount().userAccountId!,
        createdTime: DateTime.now(),
        lastUpdatedTime: DateTime.now());
    return await taskActivitiesService
        .saveTaskActivityRecord(taskActivityRecord);
  }

  setDrinkType({required DrinkType drinkType}) {
    emit(state.copyWith(drinkType: drinkType.drinkType));
  }
}
