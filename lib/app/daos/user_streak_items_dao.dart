import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/user_streak_items.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'user_streak_items_dao.g.dart';

@singleton
@DriftAccessor(tables: [UserStreakItems])
class UserStreakItemsDao extends DatabaseAccessor<AppDatabase>
    with _$UserStreakItemsDaoMixin {
  UserStreakItemsDao(super.attachedDatabase);

  Future<int> saveUserStreakItem(UserStreakItem userStreakItem) {
    userStreakItem = userStreakItem.copyWith(
        createdTime: Value(DateTime.now()),
        lastUpdatedTime: Value(DateTime.now()));
    return into(userStreakItems).insert(userStreakItem.toCompanion(false));
  }

  Future<int> deleteUserStreakItem(UserStreakItem userStreakItem) {
    return delete(userStreakItems).delete(userStreakItem);
  }

  Future<void> updateUserStreakItem(UserStreakItem userStreakItem) {
    userStreakItem =
        userStreakItem.copyWith(lastUpdatedTime: Value(DateTime.now()));
    return into(userStreakItems)
        .insertOnConflictUpdate(userStreakItem.toCompanion(false));
  }

  Future<List<UserStreakItem>> getUserStreakItemsByUserStreak(
      UserStreak userStreak,
      {int? offset,
      int? limit,
      String? columnName,
      String? columnOrder}) {
    SimpleSelectStatement<$UserStreakItemsTable, UserStreakItem>
        selectStatement = select(userStreakItems);
    selectStatement
        .where((tbl) => tbl.userStreakId.equals(userStreak.userStreakId!));

    setLimits(selectStatement, offset, limit);
    // setColumnOrders(selectStatement, columnName, columnOrder);
    return selectStatement.get();
  }

  Future<UserStreakItem?> getUserStreakItemByUserStreakAndDate(
      UserStreak userStreak, DateTime dateTime) async {
    SimpleSelectStatement<$UserStreakItemsTable, UserStreakItem>
        selectStatement = select(userStreakItems);
    selectStatement.where((tbl) => tbl.userStreakDate.equals(dateTime));
    selectStatement
        .where((tbl) => tbl.userStreakId.equals(userStreak.userStreakId!));

    List<UserStreakItem> userStreakItemsList = await selectStatement.get();
    if (userStreakItemsList.isEmpty) {
      return null;
    }
    return userStreakItemsList.first;
  }

  Future<List<UserStreakItem>> getUserStreakItemsByUserAccountBetween(
      UserAccount userAccount, DateTime startTime, DateTime endTime) {
    SimpleSelectStatement<$UserStreakItemsTable, UserStreakItem>
        selectStatement = select(userStreakItems);
    selectStatement
        .where((tbl) => tbl.userStreakDate.isBetweenValues(startTime, endTime));
    selectStatement.join([
      innerJoin(userStreakItems,
          userStreakItems.userStreakId.equalsExp(userStreaks.userStreakId))
    ])
      ..where(userStreaks.userAccountId.equals(userAccount.userAccountId!));
    return selectStatement.get();
  }

  setLimits(
      SimpleSelectStatement<$UserStreakItemsTable, UserStreakItem>
          selectStatement,
      int? offset,
      int? limit) {
    if (limit != null) {
      selectStatement.limit(limit, offset: offset);
    }
  }
}
