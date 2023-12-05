import 'package:beebloom_water_tracker/app/tracker/services/models/get_active_user_streak_for_user_account/get_active_user_streak_for_user_account_request.dart';
import 'package:beebloom_water_tracker/app/tracker/services/user_streaks_client.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/database/database.dart';
import '../../../services/streaks_service.dart';
import '../../services/models/get_active_user_streak_for_user_account/get_active_user_streak_for_user_account_response.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_get_active_user_streak_for_user_account_state.dart';

part 'tracker_get_active_user_streak_for_user_account_cubit.freezed.dart';

class TrackerGetActiveUserStreakForUserAccountCubit
    extends BaseCubit<TrackerGetActiveUserStreakForUserAccountState> {
  late UserStreaksClient streaksService;

  TrackerGetActiveUserStreakForUserAccountCubit(
      {required super.context, required UserAccount userAccount})
      : super(
            initialState: TrackerGetActiveUserStreakForUserAccountState.initial(
                userAccount: userAccount)) {
    streaksService = GetIt.instance<UserStreaksClient>();
    getActiveUserStreakForUserAccount(createRequestData());
  }

  GetActiveUserStreakForUserAccountRequest createRequestData(
      {int? userAccountId}) {
    final request = GetActiveUserStreakForUserAccountRequest(
        userAccountId: userAccountId ?? state.userAccount.userAccountId);
    return request;
  }

  Future<GetActiveUserStreakForUserAccountResponse> getActiveUserStreakForUserAccount(
      GetActiveUserStreakForUserAccountRequest request) async {
    return streaksService
        .getActiveUserStreakForUserAccount(request)
        .then((value) {
      emit(state.copyWith(
          getActiveUserStreakForUserAccountResponse: value,
          getActiveUserStreakForUserAccountStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getActiveUserStreakForUserAccountStatus: BooleanStatus.error));
      throw error;
    });
  }
}
