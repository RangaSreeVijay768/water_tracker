import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/tracker/services/models/add_user_streak_item/add_user_streak_item_request.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/models/add_user_streak_item/add_user_streak_item_response.dart';
import '../../services/user_streaks_client.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_add_user_streak_item_state.dart';

part 'tracker_add_user_streak_item_cubit.freezed.dart';

class TrackerAddUserStreakItemCubit
    extends BaseCubit<TrackerAddUserStreakItemState> {
  late UserStreaksClient userStreaksClient;

  TrackerAddUserStreakItemCubit(
      {required super.context,
      required UserAccount userAccount,
      required DateTime dateTime})
      : super(
            initialState: TrackerAddUserStreakItemState.initial(
                userAccount: userAccount, dateTime: dateTime)) {
    userStreaksClient = GetIt.instance<UserStreaksClient>();
  }

  AddUserStreakItemRequest createRequestData(
      {int? userAccountId, DateTime? dateTime}) {
    final request = AddUserStreakItemRequest(
        userAccountId: userAccountId ?? state.userAccount.userAccountId,
        dateTime: dateTime ?? state.dateTime);
    return request;
  }

  Future<AddUserStreakItemResponse> addUserStreakItem(
      AddUserStreakItemRequest request) async {
    return userStreaksClient.addUserStreakItem(request).then((value) {
      emit(state.copyWith(
          addUserStreakItemResponse: value,
          addUserStreakItemStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(addUserStreakItemStatus: BooleanStatus.error));
      throw error;
    });
  }
}
