import 'package:beebloom_water_tracker/app/core/database/modal_status.dart';
import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';


part 'tracker_task_activity_records_between_modal_state.dart';

part 'tracker_task_activity_records_between_modal_cubit.freezed.dart';

class TrackerTaskActivityRecordsBetweenModalCubit
    extends Cubit<TrackerTaskActivityRecordsBetweenModalState> {
  TrackerTaskActivityRecordsBetweenModalCubit(
      {required DateTime startTime, required DateTime endTime})
      : super(TrackerTaskActivityRecordsBetweenModalState.initial(
            startTime: startTime,
            endTime: endTime,
            modalStatus: ModalStatus.closed));
}
