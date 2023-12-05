part of 'tracker_get_active_user_streak_for_user_account_cubit.dart';

@freezed
class TrackerGetActiveUserStreakForUserAccountState
    with _$TrackerGetActiveUserStreakForUserAccountState {
  const factory TrackerGetActiveUserStreakForUserAccountState.initial({
    required UserAccount userAccount,
    GetActiveUserStreakForUserAccountResponse? getActiveUserStreakForUserAccountResponse,
    @Default(BooleanStatus.initial) BooleanStatus getActiveUserStreakForUserAccountStatus,
  }) = _Initial;
}
