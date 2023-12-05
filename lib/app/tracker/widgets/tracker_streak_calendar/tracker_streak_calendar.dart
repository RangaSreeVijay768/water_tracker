import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'tracker_streak_calendar_controller.dart';
import 'tracker_streak_calendar_cubit.dart';

class TrackerStreakCalendar extends BaseStatelessWidget<
    TrackerStreakCalendarController, TrackerStreakCalendarCubit> {
  TrackerStreakCalendar({Key? key, super.controller}) : super(key: key);
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerStreakCalendarCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child:
          BlocConsumer<TrackerStreakCalendarCubit, TrackerStreakCalendarState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          void onSelected(DateTime day, DateTime focusedDay) {
            getCubit(context).emit(state.copyWith(selectedDay: day));
          }

          return Container(
            margin: edge_insets_x_16,
            padding: edge_insets_x_12,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: borderRadius.br_10,
                boxShadow: [shadows.bs_grey]),
            child: TableCalendar(
              focusedDay: today,
              onPageChanged: (dateTime) {
                logger.d(dateTime);
                DateTime startTime =
                    AppDateTimeUtils.getStartTimeOfDateTime(dateTime);
                DateTime endTime =
                    AppDateTimeUtils.getMonthEndTimeOfDateTime(dateTime);
                logger.d("${startTime},${endTime}");
              },
              firstDay: DateTime.utc(2003),
              lastDay: DateTime.utc(2030),
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              onDaySelected: onSelected,
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerStreakCalendarCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerStreakCalendarCubit cubit =
        TrackerStreakCalendarCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
