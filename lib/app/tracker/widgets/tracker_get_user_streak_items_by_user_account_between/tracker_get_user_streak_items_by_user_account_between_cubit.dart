import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_user_streak_items_by_user_account_between/get_user_streak_items_by_user_account_between_request.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/models/get_user_streak_items_by_user_account_between/get_user_streak_items_by_user_account_between_response.dart';
import '../../services/user_streaks_client.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_get_user_streak_items_by_user_account_between_state.dart';

part 'tracker_get_user_streak_items_by_user_account_between_cubit.freezed.dart';

class TrackerGetUserStreakItemsByUserAccountBetweenCubit
    extends BaseCubit<TrackerGetUserStreakItemsByUserAccountBetweenState> {
  late UserStreaksClient userStreaksClient;

  TrackerGetUserStreakItemsByUserAccountBetweenCubit({
    required super.context,
    required UserAccount userAccount,
    required DateTime startTime,
    required DateTime endTime,
  }) : super(
            initialState:
                TrackerGetUserStreakItemsByUserAccountBetweenState.initial(
                    userAccount: userAccount,
                    startTime: startTime,
                    endTime: endTime)) {
    userStreaksClient = GetIt.instance<UserStreaksClient>();
    getUserStreakItemsByUserAccountBetween(createRequestData());
  }

  GetUserStreakItemsByUserAccountBetweenRequest createRequestData(
      {int? userAccountId, DateTime? startTime, DateTime? endTime}) {
    final request = GetUserStreakItemsByUserAccountBetweenRequest(
        userAccountId: userAccountId ?? state.userAccount.userAccountId,
        startTime: startTime ?? state.startTime,
        endTime: endTime ?? state.endTime);
    return request;
  }

  Future<GetUserStreakItemsByUserAccountBetweenResponse>
      getUserStreakItemsByUserAccountBetween(
          GetUserStreakItemsByUserAccountBetweenRequest request) async {
    return userStreaksClient
        .getUserStreakItemsByUserAccountBetween(request)
        .then((value) {
      emit(state.copyWith(
          getUserStreakItemsByUserAccountBetweenResponse: value,
          getUserStreakItemsByUserAccountBetweenStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getUserStreakItemsByUserAccountBetweenStatus: BooleanStatus.error));
      throw error;
    });
  }
}
