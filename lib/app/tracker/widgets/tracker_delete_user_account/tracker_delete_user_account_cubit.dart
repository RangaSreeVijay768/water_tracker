import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'tracker_delete_user_account_cubit.freezed.dart';
part 'tracker_delete_user_account_state.dart';

class TrackerDeleteUserAccountCubit
    extends Cubit<TrackerDeleteUserAccountState> {
  late UserAccountsService userAccountsService;

  TrackerDeleteUserAccountCubit(UserAccount userAccount)
      : super(TrackerDeleteUserAccountState.initial(userAccount: userAccount)) {
    userAccountsService = GetIt.instance<UserAccountsService>();
  }

  deleteUserAccount(UserAccount userAccount) async {
    int deletedAccounts =
        await userAccountsService.deleteUserAccount(userAccount);
    emit(state.copyWith(status: BooleanStatus.success));
  }
}
