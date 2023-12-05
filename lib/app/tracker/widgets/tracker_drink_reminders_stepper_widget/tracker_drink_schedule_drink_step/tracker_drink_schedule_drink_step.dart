import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_schedule_drink_step/tracker_drink_schedule_drink_step_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_schedule_drink_step/tracker_drink_schedule_drink_step_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/shadows.dart';

class TrackerDrinkScheduleDrinkStep extends BaseStatelessWidget<
    TrackerDrinkScheduleDrinkStepController,
    TrackerDrinkScheduleDrinkStepCubit> {
  Function(TrackerDrinkScheduleDrinkStepState) onStepFinished;

  TimeOfDay sleepTime;
  TimeOfDay wakeUpTime;
  Map<DrinkType, int> drinkTypeCountMap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkScheduleDrinkStepCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkScheduleDrinkStepCubit,
          TrackerDrinkScheduleDrinkStepState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(125),
              child: AppBar(
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/background.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          FirebaseAnalytics.instance.logEvent(name: "tracker_drink_schedule_drink_step_back_button");
                          WizardController controller =
                          WizardController.of(context);
                          controller.goBack();
                        },
                      )
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,
                backgroundColor: AppColors.white,
                // title: Text('Hydration weight page'),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: edge_insets_16,
                margin: edge_insets_t_10,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: borderRadius.br_t_20,
                  boxShadow: [shadows.bs_primary],
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: edge_insets_t_24,
                          child: LinearPercentIndicator(
                            backgroundColor: AppColors.grey2,
                            lineHeight: 8,
                            barRadius: const Radius.circular(10),
                            percent: 1.0,
                            progressColor: AppColors.bgPrimary,
                            padding: edge_insets_0,
                          ),
                        ),
                        Container(
                          padding: edge_insets_t_40,
                          child: const Text(
                            "Your Schedule ",
                            style: TextStyle(
                              color: AppColors.textHeading,
                              fontSize: Fonts.fontSize24,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                        ),
                        Container(
                          padding: edge_insets_t_8,
                          child: const Text(
                            "Modify your schedule as necessary. ",
                            style: TextStyle(
                              color: AppColors.grey1,
                              fontSize: Fonts.fontSize14,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f400,
                            ),
                          ),
                        ),
                        Container(
                          padding: edge_insets_y_16,
                          margin: edge_insets_t_70,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: borderRadius.br_10,
                            boxShadow: const [shadows.bs_primary],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.circle_notifications_rounded,
                                size: 60,
                                color: AppColors.primary,
                              ),
                              Text.rich(TextSpan(
                                  text: 'Your notification is ',
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      fontWeight: Fonts.f400,
                                      fontFamily: Fonts.fontNunito),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: 'ON',
                                      style: TextStyle(fontWeight: Fonts.f700),
                                    )
                                  ])),
                              Icon(
                                Icons.toggle_on,
                                size: 60,
                                color: AppColors.green,
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: state.drinkSchedulesMap.length,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              DrinkType drinkType = state
                                  .drinkSchedulesMap.keys
                                  .elementAt(index);
                              return Container(
                                margin: edge_insets_t_48,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              drinkType.humanReadable,
                                              style: const TextStyle(
                                                color: AppColors.grey1,
                                                fontSize: Fonts.fontSize18,
                                                fontFamily: Fonts.fontNunito,
                                                fontWeight: Fonts.f400,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: edge_insets_t_10,
                                            padding: edge_insets_10,
                                            decoration: BoxDecoration(
                                              border: borders.b_1px_grey2,
                                            ),
                                            child: Image.asset(
                                              drinkType.image,
                                              width: 80,
                                              height: 80,
                                            ),
                                          ),
                                          // SizedBox(height: 40,),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        margin: edge_insets_t_32,
                                        child: Wrap(
                                          spacing: 10.0,
                                          runSpacing: 1.0,
                                          children: [
                                            for (var timeOfDay in state
                                                .drinkSchedulesMap[drinkType]!)
                                              TextButton.icon(
                                                style: TextButton.styleFrom(
                                                    padding: edge_insets_x_8,
                                                    backgroundColor:
                                                    AppColors.grey3),
                                                onPressed: () {
                                                  FirebaseAnalytics.instance.logEvent(name: "tracker_drink_schedule_drink_step_button");
                                                  getCubit(context)
                                                      .removeDrinkTypeSlot(
                                                      drinkType, timeOfDay);
                                                },
                                                icon: Text(
                                                  AppDateTimeUtils.formatTimeOfDay(
                                                      timeOfDay: timeOfDay),
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      color: AppColors.textNormal),
                                                ),
                                                label: const Icon(
                                                  Icons.close,
                                                  size: 14,
                                                  weight: 700,
                                                  color: AppColors.grey4,
                                                ),
                                              ),
                                            TrackerAddReminderModal(
                                              onModalClosed: (planRoutine) {
                                                // getCubit(context).addDrinkTypeSlot(DrinkType.findByDrinkType(planRoutine.), planRoutine.);
                                              },
                                              drinkType: drinkType,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(color: AppColors.white),
              height: 90,
              child: Padding(
                padding: edge_insets_t_10,
                child: Column(
                  children: [
                    // Center(
                    TextButton(
                      // onHover: HSLColor.fromColor(Colors.black),
                      style: TextButton.styleFrom(
                        padding: edge_insets_x_120_y_20,
                        backgroundColor: AppColors.bgPrimary,
                        alignment: Alignment.bottomCenter,
                      ),
                      onPressed: () {
                        FirebaseAnalytics.instance.logEvent(name: "tracker_drink_schedule_drink_step_schedule_button");
                        onStepFinished(state);
                      },
                      // child: Center(
                      child: const Text(
                        "Schedule",
                        style: TextStyle(
                          color: AppColors.white,
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
  TrackerDrinkScheduleDrinkStepCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkScheduleDrinkStepCubit trackerDrinkScheduleDrinkStepCubit =
    TrackerDrinkScheduleDrinkStepCubit(
        context: context,
        startTime: wakeUpTime,
        endTime: sleepTime,
        drinkTypeCountMap: drinkTypeCountMap);
    controller?.cubit = trackerDrinkScheduleDrinkStepCubit;
    return trackerDrinkScheduleDrinkStepCubit;
  }

  TrackerDrinkScheduleDrinkStep(
      {required this.onStepFinished,
        required this.sleepTime,
        required this.wakeUpTime,
        required this.drinkTypeCountMap,
        super.key});
}
