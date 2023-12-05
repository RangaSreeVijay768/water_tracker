import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_record_between/tracker_task_activity_records_between_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerTaskActivityRecordsBetweenController {}

class TrackerTaskActivityRecordsBetween extends StatelessWidget {
  final DateTime startTime;
  final DateTime endTime;

  const TrackerTaskActivityRecordsBetween(
      {required this.startTime, required this.endTime, Key? key,
      this.trackerTaskActivityRecordsBetweenController})
      : super(key: key);

  final TrackerTaskActivityRecordsBetweenController?
      trackerTaskActivityRecordsBetweenController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTaskActivityRecordsBetweenCubit>(
      create: (context) =>
          TrackerTaskActivityRecordsBetweenCubit(startTime, endTime),
      child: BlocBuilder<TrackerTaskActivityRecordsBetweenCubit,
          TrackerTaskActivityRecordsBetweenState>(
        builder: (context, state) {
          // const  elements=[1,2,3];
          // return Container(child: Text('building elements'));
          return SizedBox(
              height: 100,
              child: state.taskActivityRecords.isNotEmpty
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
                                  state.taskActivityRecords[index].createdTime!
                                      .day
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFFB1B1B1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: Image.asset(
                                    "images/bubble.png",
                                    width: 15,
                                    height: 23,
                                  )),
                              SizedBox(
                                width: 54,
                                child: Text(
                                  '${state.taskActivityRecords[index].quantity}ml',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFF2D2D2D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      })
                  : Container(child: const Text('No records found')));
        },
      ),
    );
  }
}

