import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../core/database/database.dart';
import 'tracker_get_user_streak_items_by_user_account_between_controller.dart';
import 'tracker_get_user_streak_items_by_user_account_between_cubit.dart';

class TrackerGetUserStreakItemsByUserAccountBetween extends BaseStatelessWidget<
    TrackerGetUserStreakItemsByUserAccountBetweenController,
    TrackerGetUserStreakItemsByUserAccountBetweenCubit> {
  UserAccount userAccount;
  DateTime startTime;
  DateTime endTime;

  TrackerGetUserStreakItemsByUserAccountBetween(
      {required this.userAccount,
      required this.endTime,
      required this.startTime,
      Key? key,
      super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetUserStreakItemsByUserAccountBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetUserStreakItemsByUserAccountBetweenCubit,
          TrackerGetUserStreakItemsByUserAccountBetweenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container(
            // margin: edge_insets_x_16,
            padding: edge_insets_x_12,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: borderRadius.br_10,
                boxShadow: [shadows.bs_grey]),
            child: TableCalendar(
              calendarFormat: CalendarFormat.week,
              focusedDay: AppDateTimeUtils.getCurrentTimeOfDay(),
              calendarBuilders: CalendarBuilders(
                  defaultBuilder:
                      (BuildContext context, DateTime day, DateTime focusedDay) {
                    List<UserStreakItem>? userStreakItems =
                    state.getUserStreakItemsByUserAccountBetweenResponse != null
                        ? state.getUserStreakItemsByUserAccountBetweenResponse!
                        .userStreakItems
                        : null;
                    final text = DateFormat.d().format(day);
                    Color? backgroundColor = null;
                    if (userStreakItems != null && userStreakItems.isNotEmpty) {
                      Iterable<UserStreakItem> userStreakItemsTemp =
                      userStreakItems.where((element) => AppDateTimeUtils
                          .getStartTimeOfDateTime(element.userStreakDate!)
                          .isAtSameMomentAs(
                          AppDateTimeUtils.getStartTimeOfDateTime(day)));
                      logger.d("${userStreakItemsTemp.isNotEmpty}, ${day}");
                      if (userStreakItemsTemp.isNotEmpty) {
                        backgroundColor = Colors.yellow;
                      }
                    }
                    return Center(
                      child: Container(
                        padding: edge_insets_x_14_y_8,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius.br_100,
                          color: backgroundColor,
                        ),
                        child: Text(text,),
                      ),
                    );
                  }),
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
              daysOfWeekStyle: DaysOfWeekStyle(
                  dowTextFormatter: (date, locale) => DateFormat.E(locale).format(date)[0],
                  weekdayStyle: TextStyle(
                      fontWeight: Fonts.f700,
                      fontSize: Fonts.fontSize14
                  ),
                  weekendStyle: TextStyle(
                      fontWeight: Fonts.f700,
                      fontSize: Fonts.fontSize14
                  )
              ),
              headerVisible: false,
              daysOfWeekVisible: false,
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: true),
              availableGestures: AvailableGestures.all,

            ),
          );
        },
      ),
    );
  }

  @override
  TrackerGetUserStreakItemsByUserAccountBetweenCubit
      createCubitAndAssignToController(BuildContext context) {
    TrackerGetUserStreakItemsByUserAccountBetweenCubit cubit =
        TrackerGetUserStreakItemsByUserAccountBetweenCubit(
            context: context,
            userAccount: userAccount,
            startTime: startTime,
            endTime: endTime);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}

class TrackerGetUserStreakItemsByUserAccountBetweenWithCalendar
    extends TrackerGetUserStreakItemsByUserAccountBetween {
  TrackerGetUserStreakItemsByUserAccountBetweenWithCalendar(
      {required super.userAccount,
      required super.endTime,
      required super.startTime,
      super.key,
      super.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetUserStreakItemsByUserAccountBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetUserStreakItemsByUserAccountBetweenCubit,
          TrackerGetUserStreakItemsByUserAccountBetweenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
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
                  defaultBuilder:
                  (BuildContext context, DateTime day, DateTime focusedDay) {
                List<UserStreakItem>? userStreakItems =
                    state.getUserStreakItemsByUserAccountBetweenResponse != null
                        ? state.getUserStreakItemsByUserAccountBetweenResponse!
                            .userStreakItems
                        : null;
                final text = DateFormat.d().format(day);
                Color? backgroundColor = null;
                if (userStreakItems != null && userStreakItems.isNotEmpty) {
                  Iterable<UserStreakItem> userStreakItemsTemp =
                      userStreakItems.where((element) => AppDateTimeUtils
                              .getStartTimeOfDateTime(element.userStreakDate!)
                          .isAtSameMomentAs(
                              AppDateTimeUtils.getStartTimeOfDateTime(day)));
                  logger.d("${userStreakItemsTemp.isNotEmpty}, ${day}");
                  if (userStreakItemsTemp.isNotEmpty) {
                    backgroundColor = Colors.yellow;
                  }
                }
                return Center(
                  child: Container(
                    padding: edge_insets_x_14_y_8,
                    decoration: BoxDecoration(
                      borderRadius: borderRadius.br_100,
                      color: backgroundColor,
                    ),
                    child: Text(text,),
                  ),
                );
              }),
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
              daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) => DateFormat.E(locale).format(date)[0],
                weekdayStyle: TextStyle(
                  fontWeight: Fonts.f700,
                  fontSize: Fonts.fontSize14
                ),
                weekendStyle: TextStyle(
                  fontWeight: Fonts.f700,
                    fontSize: Fonts.fontSize14
                )
              ),
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: true),
              availableGestures: AvailableGestures.all,

            ),
          );
        },
      ),
    );
  }
}
