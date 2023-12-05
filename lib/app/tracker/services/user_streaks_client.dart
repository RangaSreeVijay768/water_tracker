import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/exceptions/not_found_exception.dart';
import 'package:beebloom_water_tracker/app/services/streaks_service.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/add_user_streak_item/add_user_streak_item_request.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/add_user_streak_item/add_user_streak_item_response.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_active_user_streak_for_user_account/get_active_user_streak_for_user_account_request.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_active_user_streak_for_user_account/get_active_user_streak_for_user_account_response.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_or_create_user_streak_for_user_account/get_or_create_user_streak_for_user_account_request.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_or_create_user_streak_for_user_account/get_or_create_user_streak_for_user_account_response.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_user_streak_items_by_user_account_between/get_user_streak_items_by_user_account_between_request.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_user_streak_items_by_user_account_between/get_user_streak_items_by_user_account_between_response.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserStreaksClient {
  StreaksService streaksService;
  UserAccountsService userAccountsService;

  UserStreaksClient(this.streaksService, this.userAccountsService);

  Future<GetOrCreateUserStreakForUserAccountResponse>
      getOrCreateUserStreakForUserAccount(
          GetOrCreateUserStreakForUserAccountRequest request) async {
    UserAccount userAccount =
        await userAccountsService.getUserAccount(request.userAccountId!);
    if (userAccount == null) {
      throw NotFoundException(
          message:
              "useraccount with id ${request.userAccountId!} doesnt exist");
    }
    UserStreak userStreak = await streaksService
        .getOrCreateActiveUserStreakForUserAccount(userAccount);
    return GetOrCreateUserStreakForUserAccountResponse(userStreak: userStreak);
  }

  Future<GetActiveUserStreakForUserAccountResponse>
      getActiveUserStreakForUserAccount(
          GetActiveUserStreakForUserAccountRequest request) async {
    UserAccount userAccount =
        await userAccountsService.getUserAccount(request.userAccountId!);
    if (userAccount == null) {
      throw NotFoundException(
          message:
              "useraccount with id ${request.userAccountId!} doesnt exist");
    }
    UserStreak? userStreak =
        await streaksService.getActiveUserStreakForUserAccount(userAccount);
    return GetActiveUserStreakForUserAccountResponse(userStreak: userStreak);
  }

  Future<AddUserStreakItemResponse> addUserStreakItem(
      AddUserStreakItemRequest request) async {
    UserAccount userAccount =
        await userAccountsService.getUserAccount(request.userAccountId!);
    if (userAccount == null) {
      throw NotFoundException(
          message:
              "useraccount with id ${request.userAccountId!} doesnt exist");
    }
    await streaksService.addUserStreakItemIfNeeded(
        userAccount, request.dateTime!);

    return AddUserStreakItemResponse();
  }

  Future<GetUserStreakItemsByUserAccountBetweenResponse>
      getUserStreakItemsByUserAccountBetween(
          GetUserStreakItemsByUserAccountBetweenRequest request) async {
    UserAccount userAccount =
        await userAccountsService.getUserAccount(request.userAccountId!);
    if (userAccount == null) {
      throw NotFoundException(
          message:
              "useraccount with id ${request.userAccountId!} doesnt exist");
    }
    List<UserStreakItem> userStreakItems =
        await streaksService.getUserStreakItemsByUserAccountBetween(
            userAccount, request.startTime!, request.endTime!);
    return GetUserStreakItemsByUserAccountBetweenResponse(
        userStreakItems: userStreakItems);
  }
}
