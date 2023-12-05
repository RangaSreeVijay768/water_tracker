import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../../themes/app_colors.dart';

class TrackerTaskActivityRecordsAggregateSumByDrinkType
    extends BaseStatelessWidget<
        TrackerTaskActivityRecordsAggregateSumByDrinkTypeController,
        TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit> {
  DateTime? startTime;
  DateTime? endTime;


  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocBuilder<TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit,
          TrackerTaskActivityRecordsAggregateSumByDrinkTypeState>(
        builder: (context, state) {
          return Container(
            // margin: edge_insets_t_28,
            // padding: edge_insets_b_50,
            child: state.groupByStringsAndCount.isNotEmpty
                ? Container(
              margin: edge_insets_t_48,

              child: PieChart(

              dataMap: Map.fromEntries(
                  (state.groupByStringsAndCount ?? [])
                      .map((e) => MapEntry(e.group, e.count.toDouble()))),
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 70,
              chartRadius: 140,
              colorList: const [
                AppColors.bgPrimary,
                AppColors.coinProgress,
                AppColors.grey3,
                AppColors.brown,
                AppColors.greyWhite,
              ],
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 45,
              // centerText: "HYBRID",
              legendOptions: const LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.bottom,
                showLegends: true,
                legendShape: BoxShape.rectangle,
                legendLabels: {},
                legendTextStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),

              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: false,
                showChartValuesInPercentage: true,
                showChartValuesOutside: true,
                decimalPlaces: 0,
              ),
              // gradientList: ---To add gradient colors---
              // emptyColorGradient: ---Empty Color gradient---
            ),)
                : const SizedBox(height: 10,)
          );
        },
      ),
    );
  }

  @override
  TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit
      createCubitAndAssignToController(BuildContext context) {
    final cubit = TrackerTaskActivityRecordsAggregateSumByDrinkTypeCubit(getLoggedUserAccount(context)!,startTime!,endTime!);
    controller?.cubit = cubit;
    return cubit;
  }

  TrackerTaskActivityRecordsAggregateSumByDrinkType(
      {this.startTime, this.endTime, super.controller, super.key});
}
