import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/tracker_drink_reminders_stepper_widget/tracker_drink_reminders_stepper_widget.dart';
import 'tracker_drink_set_sleep_cycle_step_screen_controller.dart';
import 'tracker_drink_set_sleep_cycle_step_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerDrinkSetSleepCycleStepScreen
    extends BaseStatelessWidget<
        TrackerDrinkSetSleepCycleStepScreenController,
        TrackerDrinkSetSleepCycleStepScreenCubit> {

  const TrackerDrinkSetSleepCycleStepScreen({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkSetSleepCycleStepScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerDrinkSetSleepCycleStepScreenCubit,
          TrackerDrinkSetSleepCycleStepScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return const TrackerDrinkRemindersStepperWidget();
        },
      ),
    );
  }

  @override
  TrackerDrinkSetSleepCycleStepScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkSetSleepCycleStepScreenCubit cubit = TrackerDrinkSetSleepCycleStepScreenCubit();
    controller?.cubit = cubit;
    return cubit;
  }

}
