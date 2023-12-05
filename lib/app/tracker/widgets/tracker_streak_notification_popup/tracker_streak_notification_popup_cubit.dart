import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_streak_notification_popup_state.dart';

part 'tracker_streak_notification_popup_cubit.freezed.dart';

class TrackerStreakNotificationPopupCubit
    extends BaseCubit<TrackerStreakNotificationPopupState> {
  TrackerStreakNotificationPopupCubit({required super.context})
      : super(initialState: TrackerStreakNotificationPopupState.initial());
}
