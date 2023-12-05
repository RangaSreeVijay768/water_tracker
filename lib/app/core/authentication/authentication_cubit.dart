import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'authentication_cubit.freezed.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  late UserAccountsService userAccountsService;

  AuthenticationCubit() : super(const AuthenticationState.initial()) {
    userAccountsService = GetIt.instance<UserAccountsService>();
    getOrCreateUserAccount();
  }

  getOrCreateUserAccount() async {
    UserAccount userAccount =
        await userAccountsService.getOrCreateDefaultUserAccount();
    emit(state.copyWith(userAccount: userAccount));
  }

  updateUserAccount(UserAccount userAccount,
      {BooleanStatus? onboardingStatus}) async {
    await userAccountsService
        .updateUserAccount(userAccount, onboardingStatus: onboardingStatus);
    emit(state.copyWith(userAccount: userAccount));
  }

  resetUserAccount() {
    getOrCreateUserAccount();
  }
}
