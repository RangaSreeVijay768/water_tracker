part of 'tracker_add_user_streak_item_cubit.dart';

@freezed
class TrackerAddUserStreakItemState with _$TrackerAddUserStreakItemState {
  const factory TrackerAddUserStreakItemState.initial({
    required UserAccount userAccount,
    required DateTime dateTime,
    AddUserStreakItemResponse? addUserStreakItemResponse,
    @Default(BooleanStatus.initial) BooleanStatus addUserStreakItemStatus,
}) = _Initial;
}
