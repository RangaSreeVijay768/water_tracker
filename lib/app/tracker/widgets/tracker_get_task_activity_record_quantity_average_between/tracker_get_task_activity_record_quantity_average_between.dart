import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';


class TrackerGetTaskActivityRecordQuantityAverageBetween
    extends BaseStatelessWidget<
        TrackerGetTaskActivityRecordQuantityAverageBetweenController,
        TrackerGetTaskActivityRecordQuantityAverageBetweenCubit> {
  DateTime startTime;
  DateTime endTime;

  TrackerGetTaskActivityRecordQuantityAverageBetween(
      {required this.startTime,
      required this.endTime,
      TrackerGetTaskActivityRecordQuantityAverageBetweenController? controller,
      Key? key})
      : super(controller: controller, key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        TrackerGetTaskActivityRecordQuantityAverageBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerGetTaskActivityRecordQuantityAverageBetweenCubit,
          TrackerGetTaskActivityRecordQuantityAverageBetweenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
            padding: edge_insets_y_20,
            child: Text(
              '${state.average.toStringAsFixed(0)} ml',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.textHeading,
                fontSize: Fonts.fontSize24,
                fontFamily: Fonts.fontNunito,
                fontWeight: Fonts.f700,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerGetTaskActivityRecordQuantityAverageBetweenCubit
      createCubitAndAssignToController(BuildContext context) {
    TrackerGetTaskActivityRecordQuantityAverageBetweenCubit cubit =
        TrackerGetTaskActivityRecordQuantityAverageBetweenCubit(
            getLoggedUserAccount(context)!, startTime, endTime);
    controller?.cubit = cubit;

    return cubit;
  }
}




class TrackerGetTaskActivityRecordQuantityAverageBetweenMini
    extends TrackerGetTaskActivityRecordQuantityAverageBetween {
  TrackerGetTaskActivityRecordQuantityAverageBetweenMini({
      required super.startTime,
      required super.endTime,
      super.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        TrackerGetTaskActivityRecordQuantityAverageBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerGetTaskActivityRecordQuantityAverageBetweenCubit,
          TrackerGetTaskActivityRecordQuantityAverageBetweenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Row(
            children: [
              Expanded(child: Container(
                padding: edge_insets_8,
                decoration: BoxDecoration(
                    color: AppColors.grey2,
                    borderRadius: borderRadius.br_10
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Avg. Consumption/ day", style: TextStyle(
                        fontSize: Fonts.fontSize12,
                        fontWeight: Fonts.f500
                    ),),
                    SizedBox(height: 16,),
                    Text("${state.average.toStringAsFixed(0)} ml", style: TextStyle(
                        fontWeight: Fonts.f700,
                        fontSize: Fonts.fontSize18
                    ),)
                  ],
                ),
              ))
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerGetTaskActivityRecordQuantityAverageBetweenCubit
      createCubitAndAssignToController(BuildContext context) {
    TrackerGetTaskActivityRecordQuantityAverageBetweenCubit cubit =
        TrackerGetTaskActivityRecordQuantityAverageBetweenCubit(
            getLoggedUserAccount(context)!, startTime, endTime);
    controller?.cubit = cubit;

    return cubit;
  }
}
