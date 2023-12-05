import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/water_entities.dart';
import 'package:beebloom_water_tracker/app/core/models/group_by_string_count.dart';
import 'package:beebloom_water_tracker/app/core/models/local_date_aggregate_sum.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'task_activity_record_dao.g.dart';

@singleton
@DriftAccessor(tables: [TaskActivityRecords])
class TaskActivityRecordsDao extends DatabaseAccessor<AppDatabase>
    with _$TaskActivityRecordsDaoMixin {
  Future<List<TaskActivityRecord>> getTaskActivityRecordsBetween(
      DateTime startTime, DateTime endTime) {
    Future<List<TaskActivityRecord>> taskActivityRecordsList = (select(
            taskActivityRecords)
          ..where((tbl) => tbl.createdTime.isBetweenValues(startTime, endTime)))
        .get();
    return taskActivityRecordsList;
  }

  Future<int> saveTaskActivityRecord(TaskActivityRecord taskActivityRecord) {
    return into(taskActivityRecords)
        .insert(taskActivityRecord.toCompanion(false));
  }

  Future<List<LocalDateAggregateSum>> getWaterAggregateSumGroupByDate(
      DateTime startTime, DateTime endTime, UserAccount userAccount) {
    final formattedDate = taskActivityRecords.createdTime.date;
    final rowCount = taskActivityRecords.quantity.sum();
    final query = (selectOnly(taskActivityRecords)
      ..addColumns([formattedDate, rowCount])
      ..groupBy([formattedDate])
      ..where(
          taskActivityRecords.createdTime.isBetweenValues(startTime, endTime) &
              taskActivityRecords.userAccountId
                  .equals(userAccount.userAccountId!)));
    return query.map((p0) {
      final date = p0.read(formattedDate);
      final amount = p0.read(rowCount);
      return LocalDateAggregateSum(
          date: DateTime.parse(date!), aggregateSum: amount!);
    }).get();
  }

  Future<List<GroupByStringCount>> getWaterAggregateSumGroupByWaterType(
      UserAccount userAccount, DateTime startTime, DateTime endTime) {
    final rowCount = taskActivityRecords.quantity.sum();
    final query = (selectOnly(taskActivityRecords)
      ..addColumns([taskActivityRecords.drinkType, rowCount])
      ..groupBy([taskActivityRecords.drinkType])
      ..where(
          taskActivityRecords.createdTime.isBetweenValues(startTime, endTime) &
              taskActivityRecords.userAccountId
                  .equalsNullable(userAccount.userAccountId)));
    return query.map((p0) {
      final date = p0.read(taskActivityRecords.drinkType);
      final amount = p0.read(rowCount);
      return GroupByStringCount.initial(group: date!, count: amount!);
    }).get();
  }

  Future<double?> getTaskActivityRecordQuantityAverageBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    final sumQuery = taskActivityRecords.quantity.avg();
    final query = (selectOnly(taskActivityRecords)
      ..addColumns([sumQuery])
      ..where(
          taskActivityRecords.createdTime.isBetweenValues(startTime, endTime)));
    return query.map((p0) => p0.read(sumQuery)).getSingle();
  }

  Future<int?> getTaskActivityRecordQuantitySumBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) async {
    final sumQuery = taskActivityRecords.quantity.sum();
    final query = (selectOnly(taskActivityRecords)
      ..addColumns([sumQuery])
      ..where(
          taskActivityRecords.createdTime.isBetweenValues(startTime, endTime) &
              taskActivityRecords.userAccountId
                  .equals(userAccount.userAccountId!)));
    return query.map((p0) => p0.read(sumQuery)).getSingle();
  }

  TaskActivityRecordsDao(super.attachedDatabase);
}
