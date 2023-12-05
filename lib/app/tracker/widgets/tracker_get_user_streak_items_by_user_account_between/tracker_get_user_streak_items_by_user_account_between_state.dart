part of 'tracker_get_user_streak_items_by_user_account_between_cubit.dart';

@freezed
class TrackerGetUserStreakItemsByUserAccountBetweenState
    with _$TrackerGetUserStreakItemsByUserAccountBetweenState {
  const factory TrackerGetUserStreakItemsByUserAccountBetweenState.initial({
    required UserAccount userAccount,
    required DateTime startTime,
    required DateTime endTime,
    GetUserStreakItemsByUserAccountBetweenResponse? getUserStreakItemsByUserAccountBetweenResponse,
    @Default(BooleanStatus.initial) BooleanStatus getUserStreakItemsByUserAccountBetweenStatus,
  }) = _Initial;
}
