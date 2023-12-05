import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_task_activity_records_between_modal_content_cubit.freezed.dart';
part 'tracker_task_activity_records_between_modal_content_state.dart';

class TrackerTaskActivityRecordsBetweenModalContentCubit
    extends Cubit<TrackerTaskActivityRecordsBetweenModalContentState> {
  TrackerTaskActivityRecordsBetweenModalContentCubit(
      {required DateTime startTime, required DateTime endTime})
      : super(TrackerTaskActivityRecordsBetweenModalContentState.initial(
            startTime: startTime, endTime: endTime));
}
