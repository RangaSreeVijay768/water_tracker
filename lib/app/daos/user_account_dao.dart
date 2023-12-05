import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/database/user_entities.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'user_account_dao.g.dart';

@singleton
@DriftAccessor(tables: [UserAccounts])
class UserAccountsDao extends DatabaseAccessor<AppDatabase>
    with _$UserAccountsDaoMixin {
  UserAccountsDao(super.attachedDatabase);

  Future<List<UserAccount>> getAllUserAccounts() {
    return select(userAccounts).get();
  }

  Future<int> saveUserAccount(UserAccount userAccount) {
    return into(userAccounts).insert(userAccount.toCompanion(false));
  }

  Future<UserAccount> getUserAccount(int userAccountId) {
    return (select(userAccounts)
          ..where((tbl) => tbl.userAccountId.equals(userAccountId)))
        .getSingle();
  }

  Future<int> updateUserAccount(UserAccount userAccount,
      {onboardingStatus, weight, sleepTime, wakeUpTime}) {
    return into(userAccounts).insertOnConflictUpdate(userAccount.copyWith(
        onboardingStatus: Value(onboardingStatus),
        weight: Value(weight),
        sleepTime: Value(sleepTime),
        wakeUpTime: Value(wakeUpTime)));
  }

  Future<int> deleteUserAccount(UserAccount userAccount) {
    return delete(userAccounts).delete(userAccount);
  }
}
