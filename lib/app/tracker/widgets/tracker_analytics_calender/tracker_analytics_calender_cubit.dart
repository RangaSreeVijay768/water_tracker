import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_analytics_calender_state.dart';

part 'tracker_analytics_calender_cubit.freezed.dart';

class TrackerAnalyticsCalenderCubit
    extends BaseCubit<TrackerAnalyticsCalenderState> {
  TrackerAnalyticsCalenderCubit({required super.context})
      : super(initialState: TrackerAnalyticsCalenderState.initial());
}
