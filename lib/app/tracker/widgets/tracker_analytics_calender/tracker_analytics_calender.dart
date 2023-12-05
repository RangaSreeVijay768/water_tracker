import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_analytics_with_premium_modal/tracker_analytics_with_premium_modal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../services/date_time_utils.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import '../../../themes/shadows.dart';
import 'tracker_analytics_calender_controller.dart';
import 'tracker_analytics_calender_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerAnalyticsCalender extends BaseStatelessWidget<
    TrackerAnalyticsCalenderController, TrackerAnalyticsCalenderCubit> {
  TrackerAnalyticsCalender({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAnalyticsCalenderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerAnalyticsCalenderCubit,
          TrackerAnalyticsCalenderState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          bool isBeforeToday(DateTime day) {
            final now = DateTime.now();
            return day.isBefore(DateTime(now.year, now.month, now.day));
          }

          return Container(
            // margin: edge_insets_x_16,
            padding: edge_insets_x_12,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: borderRadius.br_10,
                boxShadow: [shadows.bs_grey]),
            child: TableCalendar(
              focusedDay: AppDateTimeUtils.getCurrentTimeOfDay(),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (isBeforeToday(date)) {
                    // Return a locked cell with a lock symbol
                    return TrackerAnalyticsWithPremiumModal();
                  }
                },
                  todayBuilder: (context, date, events){
                    return Container(
                      margin: edge_insets_3,
                      decoration: BoxDecoration(
                        color: AppColors.bgPrimary, // Change this to your desired color
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${date.day}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
              ),
              firstDay: DateTime.utc(2003),
              lastDay: DateTime.utc(2030),
              daysOfWeekStyle: DaysOfWeekStyle(
                  dowTextFormatter: (date, locale) =>
                      DateFormat.E(locale).format(date)[0],
                  weekdayStyle: TextStyle(
                      fontWeight: Fonts.f700, fontSize: Fonts.fontSize14),
                  weekendStyle: TextStyle(
                      fontWeight: Fonts.f700, fontSize: Fonts.fontSize14)),
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: true),
              headerVisible: false,
              availableGestures: AvailableGestures.all,
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerAnalyticsCalenderCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAnalyticsCalenderCubit cubit =
        TrackerAnalyticsCalenderCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}








class TrackerAnalyticsWeeklyCalendar extends TrackerAnalyticsCalender{
  TrackerAnalyticsWeeklyCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAnalyticsCalenderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerAnalyticsCalenderCubit,
          TrackerAnalyticsCalenderState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          bool isBeforeToday(DateTime day) {
            final now = DateTime.now();
            return day.isBefore(DateTime(now.year, now.month, now.day));
          }

          return Container(
            // margin: edge_insets_x_16,
            padding: edge_insets_12,
            child: TableCalendar(
              calendarFormat: CalendarFormat.week,
              focusedDay: AppDateTimeUtils.getCurrentTimeOfDay(),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (isBeforeToday(date)) {
                    // Return a locked cell with a lock symbol
                    return TrackerAnalyticsWithPremiumModal();
                  }
                },
                todayBuilder: (context, date, events){
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: AppColors.bgPrimary, // Change this to your desired color
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${date.day}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
              ),
              firstDay: DateTime.utc(2003),
              lastDay: DateTime.utc(2030),
              daysOfWeekStyle: DaysOfWeekStyle(
                  dowTextFormatter: (date, locale) =>
                  DateFormat.E(locale).format(date)[0],
                  weekdayStyle: TextStyle(
                      fontWeight: Fonts.f700, fontSize: Fonts.fontSize14),
                  weekendStyle: TextStyle(
                      fontWeight: Fonts.f700, fontSize: Fonts.fontSize14)),
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: true),
              headerVisible: false,
              daysOfWeekVisible: false,
              availableGestures: AvailableGestures.all,
            ),
          );
        },
      ),
    );
  }
}
