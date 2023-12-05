part of 'tracker_delete_user_account_cubit.dart';

@freezed
class TrackerDeleteUserAccountState with _$TrackerDeleteUserAccountState {
  const factory TrackerDeleteUserAccountState.initial(
      {required UserAccount userAccount, @Default(BooleanStatus.initial) BooleanStatus status}) = _Initial;
}
