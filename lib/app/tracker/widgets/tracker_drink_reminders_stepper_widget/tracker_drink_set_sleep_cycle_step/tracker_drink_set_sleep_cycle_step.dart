import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/themes/time_picker_theme_data.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_set_sleep_cycle_step/tracker_drink_set_sleep_cycle_step_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_set_sleep_cycle_step/tracker_drink_set_sleep_cycle_step_cubit.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/shadows.dart';

class TrackerDrinkSetSleepCycleStep extends BaseStatelessWidget<
    TrackerDrinkSetSleepCycleStepController,
    TrackerDrinkSetSleepCycleStepCubit> {
  Function(TrackerDrinkSetSleepCycleStepState) onStepFinished;
  TrackerDrinkSetSleepCycleStep({required this.onStepFinished, super.key});




  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkSetSleepCycleStepCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkSetSleepCycleStepCubit,
          TrackerDrinkSetSleepCycleStepState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(125),
              child: AppBar(
                flexibleSpace: const BlurryContainer(
                  blur: 5,
                  child: Image(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                // backgroundColor: AppColors.white,
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              padding: edge_insets_x_16,
              margin: edge_insets_t_8,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: borderRadius.br_t_20,
                boxShadow: [shadows.bs_primary],
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  Container(
                    margin: edge_insets_t_48,
                    child: LinearPercentIndicator(
                      padding: edge_insets_0,
                      backgroundColor: AppColors.grey2,
                      percent: 1/3,
                      lineHeight: 8,
                      progressColor: AppColors.bgPrimary,
                      barRadius: const Radius.circular(10),
                    ),
                  ),
                  Container(
                    padding: edge_insets_t_40,
                    child: const Text(
                      "What’s your sleep cycle?",
                      style: TextStyle(
                        fontSize: Fonts.fontSize24,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                  ),
                  Container(
                    padding: edge_insets_t_8,
                    child: const Text(
                      "Sleep timings will help us to suggest a proper hydration schedule for you.. ",
                      style: TextStyle(
                        color: AppColors.grey1,
                        fontSize: Fonts.fontSize14,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f400,
                      ),
                    ),
                  ),
                  Container(
                    margin: edge_insets_t_56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            InkWell(
                              onTapUp: (TapUpDetails details) async {
                                TimeOfDay? timeOfDay = await showTimePicker(
                                    context: context,
                                    builder: (BuildContext context, Widget? child) {
                                      return Theme(
                                          data: Theme.of(context).copyWith(
                                              timePickerTheme: TimeData.timePickerThemeData,
                                              colorScheme: const ColorScheme.light(
                                                primary: AppColors.bgPrimary,
                                              )),
                                          child: child!);
                                    },
                                    initialTime: state.selectedSleepTime);
                                if (timeOfDay != null) {
                                  getCubit(context).setSleepTime(timeOfDay);
                                }
                              },
                              splashColor: AppColors.textRed,
                              child: Container(
                                padding: edge_insets_24,
                                width: 160,
                                height: 166,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: borderRadius.br_10,
                                    border: borders.b_1px_bgPrimary,
                                    boxShadow: const [shadows.bs_primary]
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'Bed time',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.grey1,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_16,
                                      child: Text(
                                        "${AppDateTimeUtils.formatTimeOfDay(timeOfDay: state.selectedSleepTime)}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: Fonts.fontSize24,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              onTap: () {},
                            ),
                            Container(
                              margin: edge_insets_b_170,
                              child: Image.asset(
                                "images/moon.png",
                                width: 100,
                                height: 100,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            InkWell(
                              onTapUp: (TapUpDetails details) async {
                                print("on tap up");
                                // getCubit(context).changeSleepCycleType(
                                //     SleepCycle.availableTypes[1]);
                                TimeOfDay? timeOfDay = await showTimePicker(
                                    context: context,
                                    cancelText: 'CANCEL',
                                    confirmText: 'OK',
                                    builder: (BuildContext context, Widget? child) {
                                      return Theme(
                                          data: Theme.of(context).copyWith(
                                              timePickerTheme: TimeData.timePickerThemeData,
                                              colorScheme: const ColorScheme.light(
                                                primary: AppColors.bgPrimary,
                                              )),
                                          child: child!);
                                    },
                                    initialTime: state.selectedWakeUpTime);
                                if (timeOfDay != null) {
                                  getCubit(context)
                                      .selectWakeupTime(timeOfDay);
                                }
                              },
                              splashColor: AppColors.textRed,
                              child: Container(
                                padding: edge_insets_24,
                                width: 160,
                                height: 166,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: borders.b_1px_bgPrimary,
                                    borderRadius: borderRadius.br_10,
                                    boxShadow: const [shadows.bs_primary]
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'Wakeup time',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.grey1,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_16,
                                      child: Text(
                                        "${AppDateTimeUtils.formatTimeOfDay(timeOfDay: state.selectedWakeUpTime)}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: Fonts.fontSize24,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              onTap: () {},
                            ),
                            Container(
                              margin: edge_insets_b_170,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/sun.png",
                                width: 100,
                                height: 100,
                              ),
                            ),

                          ],
                        ),                            ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 90,
              child: Padding(
                padding: edge_insets_t_10,
                child: Column(
                  children: [
                    // Center(
                    TextButton(
                      // onHover: HSLColor.fromColor(Colors.black),
                      style: TextButton.styleFrom(
                        padding: edge_insets_x_110_y_20,
                        backgroundColor: AppColors.bgPrimary,
                        alignment: Alignment.bottomCenter,
                      ),
                      onPressed: () {
                        FirebaseAnalytics.instance.logEvent(name: "tracker_drink_set_sleep_cycle_step_next_button");
                        onStepFinished(getCubit(context).state);
                      },
                      // child: Center(
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: Fonts.fontNunito,
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                    ),
                    // ),
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
  TrackerDrinkSetSleepCycleStepCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkSetSleepCycleStepCubit trackerDrinkSetSleepCycleStepCubit =
        TrackerDrinkSetSleepCycleStepCubit(context: context);
    controller?.cubit = trackerDrinkSetSleepCycleStepCubit;
    return trackerDrinkSetSleepCycleStepCubit;
  }
}



