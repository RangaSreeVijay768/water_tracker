import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_notification_toggle_btn_widget_state.dart';
part 'tracker_notification_toggle_btn_widget_cubit.freezed.dart';

class TrackerNotificationToggleBtnWidgetCubit extends Cubit<TrackerNotificationToggleBtnWidgetState> {
  TrackerNotificationToggleBtnWidgetCubit() : super(const TrackerNotificationToggleBtnWidgetState.initial());
}
