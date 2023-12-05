import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_streak_calendar_state.dart';

part 'tracker_streak_calendar_cubit.freezed.dart';

class TrackerStreakCalendarCubit extends BaseCubit<TrackerStreakCalendarState> {
  TrackerStreakCalendarCubit({required super.context})
      : super(initialState: TrackerStreakCalendarState.initial());

  selectedDay(DateTime? day) {
    emit(state.copyWith(selectedDay: day));
  }
}
