import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_records_between/tracker_get_task_activity_records_between_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_records_between/tracker_get_task_activity_records_between_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';

class TrackerGetTaskActivityRecordsBetween extends BaseStatelessWidget<
    TrackerGetTaskActivityRecordsBetweenController,
    TrackerGetTaskActivityRecordsBetweenCubit> {
  DateTime startTime;
  DateTime endTime;

  TrackerGetTaskActivityRecordsBetween(
      {required this.startTime, required this.endTime, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetTaskActivityRecordsBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetTaskActivityRecordsBetweenCubit,
          TrackerGetTaskActivityRecordsBetweenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.taskActivityRecords.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.taskActivityRecords.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 54,
                            // height: 12,
                            child: Text(
                              state.taskActivityRecords[index].createdTime!.day
                                  .toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.grey4,
                                fontSize: Fonts.fontSize12,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f400,
                              ),
                            ),
                          ),
                          Container(
                              padding: edge_insets_y_8,
                              child: Image.asset(
                                "images/bubble.png",
                                width: 15,
                                height: 23,
                              )),
                          SizedBox(
                            width: 54,
                            child: Text(
                              '${state.taskActivityRecords[index].quantity} ml',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.textHeading,
                                fontSize: Fonts.fontSize12,
                                fontFamily: Fonts.fontNunito,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })
              : const Text('No records found');
        },
      ),
    );
  }

  @override
  TrackerGetTaskActivityRecordsBetweenCubit createCubitAndAssignToController(BuildContext context) {
    TrackerGetTaskActivityRecordsBetweenCubit cubit =
        TrackerGetTaskActivityRecordsBetweenCubit(startTime, endTime);
    controller?.cubit = cubit;
    return cubit;
  }
}

class TrackerGetTaskActivityRecordsBetweenVerticalScroll
    extends TrackerGetTaskActivityRecordsBetween {
  TrackerGetTaskActivityRecordsBetweenVerticalScroll(
      {required super.startTime, required super.endTime, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetTaskActivityRecordsBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetTaskActivityRecordsBetweenCubit,
          TrackerGetTaskActivityRecordsBetweenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.taskActivityRecords.isNotEmpty
          ? SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.taskActivityRecords.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              margin: edge_insets_x_30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: edge_insets_t_32,
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_r_16,
                                          child: const Icon(
                                            Icons.access_time_outlined,
                                            size: 34,
                                            color: AppColors.bgPrimary,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "${state.taskActivityRecords[index].createdTime!.hour.toString().padLeft(2, '0')} : ${state.taskActivityRecords[index].createdTime!.minute.toString().padLeft(2, '0')}",
                                            style: const TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: edge_insets_t_32,
                                    padding: edge_insets_l_30,
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: edge_insets_r_16,
                                            child: Image.asset('images/${state.taskActivityRecords[index].drinkType.toLowerCase()}.png', width: 40, height: 40,)),
                                        Container(
                                          child: Text(
                                            '${state.taskActivityRecords[index].quantity} ml',
                                            style: const TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize18,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          )
          : Column(
            children: [
              const SizedBox(height: 35,),
              Image.asset("images/no_data.png", height: 144, width: 144,),
              Container(
                padding: edge_insets_y_2,
                child: const Text("Sorry, no log found", style: TextStyle(fontSize: Fonts.fontSize18),),
              ),
              const Text("You haven't updated any hydration activities yet", style: TextStyle(fontSize: Fonts.fontSize14),)
            ],
          );
        },
      ),
    );
  }
}
