import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../../themes/fonts.dart';
import 'core_counter_timer_controller.dart';
import 'core_counter_timer_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class CoreCounterTimer extends BaseStatelessWidget<CoreCounterTimerController,
    CoreCounterTimerCubit> {

  CoreCounterTimer(
      {Key? key, super.controller})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreCounterTimerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CoreCounterTimerCubit, CoreCounterTimerState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          initializeController(context);
          return InkWell(
            onTap: () async {
            },
            child: Column(
              children: [

                StreamBuilder(
                  stream: state.stopWatchTimer?.rawTime,
                  initialData: state.stopWatchTimer?.rawTime.value,
                  builder: (context, snap) {
                    final value = snap.data!;
                    final displayTime = StopWatchTimer.getDisplayTime(value,
                        hours: false, minute: true, milliSecond: false);
                    final RegExp regexp =  RegExp(r'^0+(?=.)');
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            displayTime,
                            style: TextStyle(
                              fontSize: Fonts.fontSize16,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onStartTimer,
                //         child: Text("Start")
                //     ),
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onStopTimer(),
                //         child: Text("Stop")
                //     ),
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onResetTimer(),
                //         child: Text("Reset")
                //     )
                //   ],
                // ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  CoreCounterTimerCubit createCubitAndAssignToController(BuildContext context) {
    CoreCounterTimerCubit cubit = CoreCounterTimerCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
