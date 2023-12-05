import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';
import '/app/core/modals/base_modal/base_modal_cubit.dart';

part 'tracker_buy_streak_modal_state.dart';

part 'tracker_buy_streak_modal_cubit.freezed.dart';

class TrackerBuyStreakModalCubit
    extends BaseModalCubit<TrackerBuyStreakModalState> {
  TrackerBuyStreakModalCubit({required super.context})
      : super(initialState: TrackerBuyStreakModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }
}
