import 'package:beebloom_water_tracker/app/core/models/time_filter.dart';
import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_time_filter_cubit.freezed.dart';
part 'tracker_time_filter_state.dart';

class TrackerTimeFilterCubit extends Cubit<TrackerTimeFilterState> {
  TrackerTimeFilterCubit(List<TimeFilter> timeFilters)
      : super(TrackerTimeFilterState.initial(
            timeFilters: timeFilters, selectedTimeFilter: timeFilters[0]));

  selectTimeFliter(TimeFilter timeFilter) {
    emit(state.copyWith(selectedTimeFilter: timeFilter));
  }
}
