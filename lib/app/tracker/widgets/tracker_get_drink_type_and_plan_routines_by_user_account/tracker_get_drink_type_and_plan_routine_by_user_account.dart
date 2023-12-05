import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_plan_routine/tracker_delete_plan_routine_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_drink_type_and_plan_routines_by_user_account/tracker_get_drink_type_and_plan_routine_by_user_account_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_drink_type_and_plan_routines_by_user_account/tracker_get_drink_type_and_plan_routine_by_user_account_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/fonts.dart';
import '../../screens/tracker_drink_set_sleep_cycle_step_screen/tracker_drink_set_sleep_cycle_step_screen.dart';
import '../tracker_reminders_plan_routine_details/tracker_reminders_plan_routine_details.dart';

class TrackerGetDrinkTypeAndPlanRoutineByUserAccount
    extends BaseStatelessWidget<
        TrackerGetDrinkTypeAndPlanRoutineByUserAccountController,
        TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit> {
  TrackerGetDrinkTypeAndPlanRoutineByUserAccount({super.key, super.controller});

  TrackerDeletePlanRoutineController trackerDeletePlanRoutineController =
      TrackerDeletePlanRoutineController();

  @override
  Widget build(BuildContext context) {
    initializeController(context);
    return BlocProvider<TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit,
          TrackerGetDrinkTypeAndPlanRoutineByUserAccountState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return (state.drinkTypeAndPlanRoutines != null &&
                  state.drinkTypeAndPlanRoutines!.isNotEmpty)
              ? Column(
                  children: [
                    if (state.drinkTypeAndPlanRoutines!.isNotEmpty)
                      Container(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: state.drinkTypeAndPlanRoutines!.length,
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: edge_insets_t_48,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Image and Drink type
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Container(
                                                // margin: edge_insets_t_48,
                                                child: Text(
                                                  state.drinkTypeAndPlanRoutines![index]
                                                      .drinkType,
                                                  style: const TextStyle(
                                                    color: AppColors.textHeading,
                                                    fontSize: Fonts.fontSize14,
                                                    fontFamily: Fonts.fontNunito,
                                                    fontWeight: Fonts.f700,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: edge_insets_t_10,
                                                padding: edge_insets_8,
                                                decoration: BoxDecoration(
                                                    border: borders.b_1px_grey2,
                                                    borderRadius: borderRadius.br_5),
                                                child: Image.asset(
                                                  "images/${state.drinkTypeAndPlanRoutines![index].drinkType.toLowerCase()}.png",
                                                  width: 80,
                                                  height: 80,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),


                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: edge_insets_t_20,
                                            child: Wrap(
                                              spacing: 10.0,
                                              runSpacing: 1.0,
                                              children: [
                                                for (var planRoutine in state.drinkTypeAndPlanRoutines![index].planRoutines)
                                                  TrackerRemindersPlanRoutineDetails(
                                                    planRoutine: planRoutine,
                                                    onPlanRoutineDeleted: (planRoutine) {
                                                      getCubit(context).getDrinkTypeAndPlanRoutinesByUserAccount(
                                                          getLoggedUserAccount(context)!);
                                                    },
                                                  ),
                                                TrackerAddReminderModal(
                                                  onModalClosed: (planRoutine) {
                                                    getCubit(context).getDrinkTypeAndPlanRoutinesByUserAccount(
                                                        getLoggedUserAccount(context)!);
                                                  },
                                                  drinkType: DrinkType.findByDrinkType(
                                                      state.drinkTypeAndPlanRoutines![index].drinkType),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )

                                      ]
                                  ),
                                );
                              },
                            )),
                      )
                    else
                      const Text("No records found"),
                  ],
                )
              : Column(
            children: [
              Container(
                padding: edge_insets_x_12_y_8,
                decoration: BoxDecoration(
                    border: borders.b_1px_grey4,
                    borderRadius: borderRadius.br_10
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: borderRadius.br_100,
                          child: Image.asset(
                            "images/app_illustration.png",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            // padding: edge_insets_y_8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 15,),
                                const Text(
                                  "Create your water consumption schedule so you never miss on it. ",
                                ),
                                TextButton.icon(
                                    onPressed: () {
                                      FirebaseAnalytics.instance.logEvent(name: "tracker_get_drink_type_and_plan_routine_by_user_account_setup_now_button");
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const TrackerDrinkSetSleepCycleStepScreen()));
                                    },
                                    style: TextButton.styleFrom(
                                        padding: edge_insets_0,
                                        shape: const RoundedRectangleBorder()
                                    ),
                                    icon: const Text(
                                      "Setup now",
                                      style: TextStyle(
                                          color: AppColors.primary,
                                          fontWeight: Fonts.f700,
                                          fontSize: Fonts.fontSize14),
                                    ),
                                    label: const Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.primary,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              Image.asset(
                  "images/reminder_clock.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width/2,
              ),
              const Text("Reminder clock tik..tok..tik...tok..",
                style: TextStyle(
                  fontWeight: Fonts.f700
                ),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit
      createCubitAndAssignToController(BuildContext context) {
    TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit cubit =
        TrackerGetDrinkTypeAndPlanRoutineByUserAccountCubit(
            userAccount: getLoggedUserAccount(context)!);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}



