import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_morning_notification_popup_content_state.dart';

part 'tracker_morning_notification_popup_content_cubit.freezed.dart';

class TrackerMorningNotificationPopupContentCubit
    extends BaseCubit<TrackerMorningNotificationPopupContentState> {
  TrackerMorningNotificationPopupContentCubit({required super.context}) : super(
      initialState: TrackerMorningNotificationPopupContentState.initial());
}
