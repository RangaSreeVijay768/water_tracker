import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/page_status.dart';
import '../../../services/date_time_utils.dart';
import '../../widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_drink_analytics_screen_state.dart';

part 'tracker_drink_analytics_screen_cubit.freezed.dart';

class TrackerDrinkAnalyticsScreenCubit
    extends BaseCubit<TrackerDrinkAnalyticsScreenState> {
  TrackerDrinkAnalyticsScreenCubit({required super.context})
      : super(initialState: TrackerDrinkAnalyticsScreenState.initial(pageStatus: PageStatus.initial)){
    initializeAnalytics();
  }

  initializeAnalytics(){
    DateTime currentTime = DateTime.now();
    DateTime dayStartTime = AppDateTimeUtils.getStartTimeOfDateTime(currentTime);
    DateTime dayEndTime = AppDateTimeUtils.getEndTimeOfDateTime(currentTime);
    DateTime historyStartTime = AppDateTimeUtils.getStartTimeOfDateTime(
        currentTime.subtract(const Duration(days: 7)));
    DateTime historyEndTime = AppDateTimeUtils.getEndTimeOfDateTime(
        currentTime.subtract(const Duration(days: 1)));
    emit(TrackerDrinkAnalyticsScreenState.initial(
        pageStatus: PageStatus.loaded,
      historyStartTime: dayStartTime,
      historyEndTime: dayEndTime
    ));
  }



  void expand(bool status) {
    emit(state.copyWith(isExpanded: status));
  }

}
