import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_select_drink_add_reminder/tracker_select_drink_add_reminder_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_select_drink_add_reminder/tracker_select_drink_add_reminder_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';

class TrackerSelectDrinkAddReminder extends BaseStatelessWidget<
    TrackerSelectDrinkAddReminderController,
    TrackerSelectDrinkAddReminderCubit> {
  const TrackerSelectDrinkAddReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerSelectDrinkAddReminderCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocBuilder<TrackerSelectDrinkAddReminderCubit,
            TrackerSelectDrinkAddReminderState>(builder: (context, state) {
          return Container(
            margin: edge_insets_l_24,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.drinkTypes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: 52,
                          child: TextButton(
                            onPressed: () {
                              FirebaseAnalytics.instance.logEvent(name: "tracker_select_drink_add_reminder_drink_button");
                              getCubit(context)
                                  .selectDrinkType(state.drinkTypes[index]);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.white,
                              fixedSize: const Size(40, 40),
                              shape: CircleBorder(
                                side: BorderSide(
                                  color: state.selectedDrinkType != null &&
                                          state.selectedDrinkType?.drinkType ==
                                              state.drinkTypes[index].drinkType
                                      ? Colors.blue
                                      : AppColors.grey2,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            child: Image.asset(state.drinkTypes[index].image),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: edge_insets_y_16,
                  width: 280,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.bgPrimary,
                      padding: edge_insets_y_10,
                    ),
                    child: const Text(
                      'Done',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: Fonts.fontSize18,
                        fontFamily: Fonts.fontNunito,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                    onPressed: () {
                      FirebaseAnalytics.instance.logEvent(name: "tracker_select_drink_add_reminder_done_button");
                      Navigator.pop(context, state.selectedDrinkType?.image);
                    },
                  ),
                ),
              ],
            ),
          );
        }));
  }

  @override
  TrackerSelectDrinkAddReminderCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerSelectDrinkAddReminderCubit cubit =
        TrackerSelectDrinkAddReminderCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
