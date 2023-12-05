import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_by_date_between/tracker_task_activity_records_aggregate_by_date_between_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_by_date_between/tracker_task_activity_records_aggregate_by_date_between_cubit.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';

class TrackerTaskActivityRecordsAggregateByDateBetweenScreen
    extends BaseStatelessWidget<
        TrackerTaskActivityRecordsAggregateByDateBetweenController,
        TrackerTaskActivityRecordsAggregateByDateBetweenCubit> {
  final DateTime startTime;
  final DateTime endTime;
  final UserAccount userAccount;

  const TrackerTaskActivityRecordsAggregateByDateBetweenScreen(
      {required this.startTime,
      required this.endTime,
      required this.userAccount,
      super.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTaskActivityRecordsAggregateByDateBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerTaskActivityRecordsAggregateByDateBetweenCubit,
          TrackerTaskActivityRecordsAggregateByDateBetweenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
              // height: 174,
              child: state.localDateAggregateSums.isNotEmpty
              ? SizedBox(
                height: 174,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: edge_insets_y_24,
                      child: const Text(
                        'Last 7days records',
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize18,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 75,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.localDateAggregateSums.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 54,
                                    // height: 12,
                                    child: Text(
                                      "${state.localDateAggregateSums[index].date.day}th",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: AppColors.grey4,
                                        fontSize: Fonts.fontSize12,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                  ),
                                  state.localDateAggregateSums[index].aggregateSum != null
                                  ? Column(
                                      children: [
                                        if(state.localDateAggregateSums[index].aggregateSum  <= 750)...[
                                          Container(
                                              // padding: edge_insets_y_12,
                                              child: Image.asset(
                                                "images/bubble.png",
                                                width: 10,
                                                height: 16,
                                              ))
                                        ],
                                        if(state.localDateAggregateSums[index].aggregateSum > 750 && state.localDateAggregateSums[index].aggregateSum < 1600)...[
                                          Container(
                                              // padding: edge_insets_y_8,
                                              child: Image.asset(
                                                "images/bubble.png",
                                                width: 15,
                                                height: 23,
                                              )),
                                        ],
                                        if(state.localDateAggregateSums[index].aggregateSum >= 1600)...[
                                          Container(
                                              // padding: edge_insets_y_2,
                                              child: Image.asset(
                                                "images/bubble.png",
                                                width: 20,
                                                height: 30,
                                              )),
                                        ],
                                      ])
                                  : const Text('n'),
                                  state.localDateAggregateSums[index].aggregateSum != null
                                  ? SizedBox(
                                    width: 54,
                                    child: Text(
                                      '${state.localDateAggregateSums[index].aggregateSum}ml',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: AppColors.textHeading,
                                        fontSize: Fonts.fontSize12,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                  )
                                  : const Text('not')
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )
              : const SizedBox(height: 24,)
          );
        },
      ),
    );
  }

  @override
  TrackerTaskActivityRecordsAggregateByDateBetweenCubit
      createCubitAndAssignToController(BuildContext context) {
    TrackerTaskActivityRecordsAggregateByDateBetweenCubit cubit =
        TrackerTaskActivityRecordsAggregateByDateBetweenCubit(
            userAccount, startTime, endTime);
    controller?.cubit = cubit;
    return cubit;
  }
}

class TrackerGetDayWiseDrinkWaterAggregateSumByUserAccountGraph
    extends TrackerTaskActivityRecordsAggregateByDateBetweenScreen {
  const TrackerGetDayWiseDrinkWaterAggregateSumByUserAccountGraph(
      {required super.startTime, required super.endTime, required super.userAccount, super.key,
      super.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTaskActivityRecordsAggregateByDateBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerTaskActivityRecordsAggregateByDateBetweenCubit,
          TrackerTaskActivityRecordsAggregateByDateBetweenState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.localDateAggregateSums.isNotEmpty
              ?Column(
            // alignment: Alignment.topLeft,
            children: [
              const DottedLine(
                direction: Axis.horizontal,
                lineThickness: 1.5,
                dashLength: 10,
                dashGapLength: 4.2,
                dashColor: AppColors.grey4,
              ),
              Container(
                margin: edge_insets_y_24,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Your activities chart",
                  style: TextStyle(
                    fontWeight: Fonts.f700,
                    fontSize: Fonts.fontSize14,
                    fontFamily: Fonts.fontNunito,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: BarChart(BarChartData(
                  maxY: 10,
                  minY: 0,
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(
                    border: borders.bbl_1px_normal,
                  ),
                  titlesData: const FlTitlesData(
                    rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    // bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,getTitlesWidget: getBottomTitles))
                  ),
                  barGroups: state.localDateAggregateSums
                      .map((data) => BarChartGroupData(x: data.date.day, barRods: [
                    BarChartRodData(
                        toY: data.aggregateSum.toDouble() / 1000,
                        color: AppColors.bgPrimary,
                        width: 14,
                        borderRadius: borderRadius.br_0)
                  ]))
                      .toList(),
                )),
              ),

            ],
          )
              : const SizedBox(height: 20,);
        },
      ),
    );
  }
}
