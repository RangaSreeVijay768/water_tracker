import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_add_reminder_step/tracker_drink_add_reminder_step.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_add_reminder_step/tracker_drink_add_reminder_step_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_reminders_stepper_widget_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_reminders_stepper_widget_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_schedule_drink_step/tracker_drink_schedule_drink_step.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_schedule_drink_step/tracker_drink_schedule_drink_step_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_set_sleep_cycle_step/tracker_drink_set_sleep_cycle_step.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_set_sleep_cycle_step/tracker_drink_set_sleep_cycle_step_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:go_router/go_router.dart';

class TrackerDrinkRemindersStepperWidget extends BaseStatelessWidget<
    TrackerDrinkRemindersStepperWidgetController,
    TrackerDrinkRemindersStepperWidgetCubit> {
  const TrackerDrinkRemindersStepperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkRemindersStepperWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkRemindersStepperWidgetCubit,
          TrackerDrinkRemindersStepperWidgetState>(
        listener: (context, state) {
          if (state.reminderCreationStatus==BooleanStatus.success) {
            context.push("/tracker");
          }
        },
        builder: (context, state) {
          return DefaultWizardController(
              stepControllers: [
                WizardStepController(
                    step: TrackerDrinkSetSleepCycleStepController()),
                WizardStepController(
                    step: TrackerDrinkAddReminderStepController()),
                WizardStepController(
                    step: TrackerDrinkScheduleDrinkStepController())
              ],
              child: Column(
                children: [
                  Expanded(
                    child: Wizard(stepBuilder: (context, state) {
                      if (state is TrackerDrinkSetSleepCycleStepController) {
                        return TrackerDrinkSetSleepCycleStep(
                          onStepFinished: (state) {
                            getCubit(context).updateState(step1State: state);
                            WizardController.of(context).goNext();
                          },
                        );
                      }
                      if (state is TrackerDrinkAddReminderStepController) {
                        return TrackerDrinkAddReminderStep(
                          onStepFinished: (state) {
                            getCubit(context).updateState(
                                step2State: state,
                                step1State: getCubit(context).state.step1State);
                            WizardController.of(context).goNext();
                          },
                        );
                      }
                      if (state is TrackerDrinkScheduleDrinkStepController) {
                        TrackerDrinkRemindersStepperWidgetState wizardState =
                            getCubit(context).state;
                        return TrackerDrinkScheduleDrinkStep(
                          sleepTime: wizardState.step1State!.selectedSleepTime,
                          wakeUpTime:
                              wizardState.step1State!.selectedWakeUpTime,
                          drinkTypeCountMap:
                              wizardState.step2State!.drinkTypeCountMap,
                          onStepFinished: (state) {
                            getCubit(context)
                                .addDrinkReminders(state.drinkSchedulesMap);
                            // context.push('/tracker');
                          },
                        );
                      }
                      return Container();
                    }),
                  ),
                ],
              ));
        },
      ),
    );
  }

  @override
  TrackerDrinkRemindersStepperWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkRemindersStepperWidgetCubit
        trackerDrinkRemindersStepperWidgetCubit =
        TrackerDrinkRemindersStepperWidgetCubit(context: context);
    controller?.cubit = trackerDrinkRemindersStepperWidgetCubit;
    return trackerDrinkRemindersStepperWidgetCubit;
  }
}
