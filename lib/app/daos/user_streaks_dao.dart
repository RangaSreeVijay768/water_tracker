import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/user_streaks.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'user_streaks_dao.g.dart';

@singleton
@DriftAccessor(tables: [UserStreaks])
class UserStreaksDao extends DatabaseAccessor<AppDatabase>
    with _$UserStreaksDaoMixin {
  UserStreaksDao(super.attachedDatabase);

  Future<int> saveUserStreak(UserStreak userStreak) {
    userStreak = userStreak.copyWith(
        createdTime: Value(DateTime.now()),
        lastUpdatedTime: Value(DateTime.now()));
    return into(userStreaks).insert(userStreak.toCompanion(false));
  }

  Future<int> deleteUserStreak(UserStreak userStreak) {
    return delete(userStreaks).delete(userStreak);
  }

  Future<void> updateUserStreak(UserStreak userStreak) {
    userStreak = userStreak.copyWith(lastUpdatedTime: Value(DateTime.now()));
    return into(userStreaks)
        .insertOnConflictUpdate(userStreak.toCompanion(false));
  }

  Future<List<UserStreak>> getUserStreaksByUserAccountAndStatus(
      UserAccount userAccount,
      {BooleanStatus? status,
      int? offset,
      int? limit,
      String? columnName,
      String? columnOrder}) {
    SimpleSelectStatement<$UserStreaksTable, UserStreak> selectStatement =
        select(userStreaks);
    selectStatement
        .where((tbl) => tbl.userAccountId.equals(userAccount.userAccountId!));
    if (status != null) {
      selectStatement.where((tbl) => tbl.status.equals(status!.name));
    }

    setLimits(selectStatement, offset, limit);
    // setColumnOrders(selectStatement, columnName, columnOrder);
    return selectStatement.get();
  }

  setLimits(
      SimpleSelectStatement<$UserStreaksTable, UserStreak> selectStatement,
      int? offset,
      int? limit) {
    if (limit != null) {
      selectStatement.limit(limit, offset: offset);
    }
  }

// setColumnOrders(
//     SimpleSelectStatement<$UserStreaksTable, UserStreak> selectStatement,
//     String? columnName,
//     String? columnOrder) {
//   if (columnOrder == 'asc') {
//     selectStatement.orderBy([OrderingTerm.asc(userStreaks.createdTime!.time)]);
//   }
//   return selectStatement;
// }
}
