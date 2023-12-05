import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/daos/user_account_dao.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserAccountsService {
  late UserAccountsDao userAccountDao;

  UserAccountsService() {
    userAccountDao = GetIt.instance<UserAccountsDao>();
  }

  Future<UserAccount> getOrCreateDefaultUserAccount() async {
    List<UserAccount> userAccounts = await userAccountDao.getAllUserAccounts();
    UserAccount? userAccount;
    if (userAccounts.isEmpty) {
      userAccount = UserAccount(
          createdTime: DateTime.now(),
          lastUpdatedTime: DateTime.now(),
          onboardingStatus: BooleanStatus.pending);
      int userAccountId = await userAccountDao.saveUserAccount(userAccount);
      userAccount = await getUserAccount(userAccountId);
    } else {
      userAccount = userAccounts.first;
    }

    return userAccount;
  }

  Future<UserAccount> getUserAccount(int userAccountId) {
    return userAccountDao.getUserAccount(userAccountId);
  }

  Future<int> updateUserAccount(UserAccount userAccount,
      {onboardingStatus, weight,sleepTime,wakeUpTime}) {
    return userAccountDao.updateUserAccount(userAccount,
        onboardingStatus: onboardingStatus, weight: weight);
  }

  Future<int> deleteUserAccount(UserAccount userAccount) {
    return userAccountDao.deleteUserAccount(userAccount);
  }
}
