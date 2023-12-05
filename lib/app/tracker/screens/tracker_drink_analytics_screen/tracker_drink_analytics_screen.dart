import 'package:beebloom_water_tracker/app/core/widgets/expanded_section/expanded_section.dart';
import 'package:beebloom_water_tracker/app/core/widgets/expanded_section/expanded_section_controller.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/accordian.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_analytics_calender/tracker_analytics_calender.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_user_streak_items_by_user_account_between/tracker_get_user_streak_items_by_user_account_between.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../services/date_time_utils.dart';
import '../../widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between.dart';
import '../../widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type.dart';
import 'tracker_drink_analytics_screen_controller.dart';
import 'tracker_drink_analytics_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerDrinkAnalyticsScreen extends BaseStatelessWidget<
    TrackerDrinkAnalyticsScreenController, TrackerDrinkAnalyticsScreenCubit> {
  TrackerDrinkAnalyticsScreen({Key? key, super.controller}) : super(key: key);
  TrackerTaskActivityRecordsAggregateSumByDrinkTypeController
      trackerTaskActivityRecordsAggregateSumByDrinkTypeController =
      TrackerTaskActivityRecordsAggregateSumByDrinkTypeController();
  ExpansionTileController expansionTileController = ExpansionTileController();
  TrackerGetTaskActivityRecordQuantityAverageBetweenController
      trackerGetTaskActivityRecordQuantityAverageBetweenController =
      TrackerGetTaskActivityRecordQuantityAverageBetweenController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkAnalyticsScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkAnalyticsScreenCubit,
          TrackerDrinkAnalyticsScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Analytics",
                    style: TextStyle(
                        fontWeight: Fonts.f700, fontSize: Fonts.fontSize18),
                  )
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: edge_insets_12,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: borderRadius.br_10,
                          boxShadow: [shadows.bs_grey]),
                      child: Column(
                        children: [
                          ExpansionTile(
                            onExpansionChanged: (bool expanded) {
                              getCubit(context).expand(expanded);
                            },
                            title: Center(
                              child: Text(
                                  "${AppDateTimeUtils.getCurrentMonthName()} ${AppDateTimeUtils.getCurrentTimeOfDay().year}"),
                            ),
                            children: [TrackerAnalyticsCalender()],
                          ),
                          state.isExpanded
                              ? SizedBox()
                              : TrackerAnalyticsWeeklyCalendar(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_16,
                      decoration: BoxDecoration(
                          boxShadow: [shadows.bs_grey],
                          color: AppColors.white,
                          borderRadius: borderRadius.br_10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Your activities chart",
                            style: TextStyle(
                                fontSize: Fonts.fontSize16,
                                fontWeight: Fonts.f700),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            child: TrackerTaskActivityRecordsAggregateSumByDrinkType(
                                controller:
                                    trackerTaskActivityRecordsAggregateSumByDrinkTypeController,
                                startTime: state.historyStartTime,
                                endTime: state.historyEndTime),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: edge_insets_l_16,
                                padding: edge_insets_20,
                                // margin: edge_insets_b_20,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  boxShadow: [shadows.bs_grey],
                                    borderRadius: borderRadius.br_5),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'Total drink consumed',
                                        style: TextStyle(
                                          color: AppColors.grey1,
                                          fontSize: Fonts.fontSize12,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: edge_insets_y_8,
                                      child: TrackerGetTaskActivityRecordQuantityAverageBetween(
                                        startTime: state.historyStartTime!,
                                        endTime: state.historyEndTime!,
                                        controller:
                                        trackerGetTaskActivityRecordQuantityAverageBetweenController,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Container(
                                margin: edge_insets_r_16,
                                padding: edge_insets_20,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  boxShadow: [shadows.bs_grey],
                                    borderRadius: borderRadius.br_5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'Total drink intake',
                                        style: TextStyle(
                                          color: AppColors.grey1,
                                          fontSize: Fonts.fontSize12,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: edge_insets_y_20,
                                      margin: edge_insets_t_16,
                                      child: const Text(
                                        '5 times',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.textHeading,
                                          fontSize: Fonts.fontSize24,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32,)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkAnalyticsScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkAnalyticsScreenCubit cubit =
        TrackerDrinkAnalyticsScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
