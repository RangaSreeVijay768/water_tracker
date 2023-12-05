import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_buy_streak_modal_content_state.dart';

part 'tracker_buy_streak_modal_content_cubit.freezed.dart';

class TrackerBuyStreakModalContentCubit
    extends BaseCubit<TrackerBuyStreakModalContentState> {
  TrackerBuyStreakModalContentCubit({required super.context})
      : super(initialState: TrackerBuyStreakModalContentState.initial(
    menuItemCountMap: HashMap()
  ));


  void increaseMenuItemCount(String item, int value) {
    Map<String, int> menuItemCountMap = Map.from(state.menuItemCountMap);
    menuItemCountMap[item] = (menuItemCountMap[item] ?? 0) + value;
    emit(state.copyWith(menuItemCountMap: menuItemCountMap));
  }

}
