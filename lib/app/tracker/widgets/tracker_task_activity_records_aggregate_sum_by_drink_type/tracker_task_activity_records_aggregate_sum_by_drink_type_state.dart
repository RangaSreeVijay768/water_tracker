import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/group_by_string_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_task_activity_records_aggregate_sum_by_drink_type_state.freezed.dart';

enum ApiStateStatus { initial, loaded, loading, created, error, completed }

@freezed
class TrackerTaskActivityRecordsAggregateSumByDrinkTypeState
    with _$TrackerTaskActivityRecordsAggregateSumByDrinkTypeState {
  const factory TrackerTaskActivityRecordsAggregateSumByDrinkTypeState(
          {required UserAccount userAccount, @Default(ApiStateStatus.initial) ApiStateStatus status,
          @Default([]) List<GroupByStringCount> groupByStringsAndCount,
          DateTime? startTime,
          DateTime? endTime}) =
      _TrackerTaskActivityRecordsAggregateSumByDrinkTypeState;
}
