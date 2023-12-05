import 'package:beebloom_water_tracker/app/tracker/services/models/get_active_user_streak_for_user_account/get_active_user_streak_for_user_account_request.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/get_active_user_streak_for_user_account/get_active_user_streak_for_user_account_response.dart';
import 'package:beebloom_water_tracker/app/tracker/services/user_streaks_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../core/models/page_status.dart';
import '../../../services/date_time_utils.dart';
import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_drink_streak_screen_cubit.freezed.dart';
part 'tracker_drink_streak_screen_state.dart';

class TrackerDrinkStreakScreenCubit
    extends BaseCubit<TrackerDrinkStreakScreenState> {
  late UserStreaksClient userStreaksClient;

  TrackerDrinkStreakScreenCubit({required super.context})
      : super(initialState: TrackerDrinkStreakScreenState.initial(
      pageStatus: PageStatus.initial
  )) {
    userStreaksClient = GetIt.instance<UserStreaksClient>();
    initializeStreakScreen();
    getActiveUserStreakForUserAccount(createRequestData());
  }


  initializeStreakScreen() async{
    DateTime currentTime = DateTime.now();
    DateTime dayStartTime = AppDateTimeUtils.getStartTimeOfDateTime(currentTime);
    DateTime dayEndTime = AppDateTimeUtils.getEndTimeOfDateTime(currentTime);


    emit(TrackerDrinkStreakScreenState.initial(
      pageStatus: PageStatus.loaded,
      todaysStartTime: dayStartTime,
      todaysEndTime: dayEndTime,
    ));

  }


  GetActiveUserStreakForUserAccountRequest createRequestData(
      {int? userAccountId}) {
    final request = GetActiveUserStreakForUserAccountRequest(
        userAccountId: userAccountId ?? getUserAccount().userAccountId!);
    return request;
  }

  Future<GetActiveUserStreakForUserAccountResponse>
      getActiveUserStreakForUserAccount(
          GetActiveUserStreakForUserAccountRequest request) async {
    return userStreaksClient
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
