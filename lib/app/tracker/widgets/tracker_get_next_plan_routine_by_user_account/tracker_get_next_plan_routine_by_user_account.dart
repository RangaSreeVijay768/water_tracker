import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/core/widgets/core_counter_timer/core_counter_timer.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_next_plan_routine_by_user_account/tracker_get_next_plan_routine_by_user_account_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_next_plan_routine_by_user_account/tracker_get_next_plan_routine_by_user_account_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerGetNextPlanRoutineByUserAccount extends BaseStatelessWidget<
    TrackerGetNextPlanRoutineByUserAccountController,
    TrackerGetNextPlanRoutineByUserAccountCubit> {
  const TrackerGetNextPlanRoutineByUserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetNextPlanRoutineByUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetNextPlanRoutineByUserAccountCubit,
          TrackerGetNextPlanRoutineByUserAccountState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.planRoutine != null
              ? Container(
                  // padding: edge_insets_12,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: AppColors.bgLightBlue),
                      borderRadius: borderRadius.br_10,
                    ),
                    shadows: const [shadows.bs_primary],
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: edge_insets_12,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: borderRadius.br_100,
                                    child: Image.asset(
                                      'images/next_activity_illustration.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Next activity:",
                                        style: TextStyle(
                                          color: AppColors.grey1,
                                          fontSize: Fonts.fontSize14,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Wrap(
                                        // alignment: WrapAlignment.center,
                                        children: [
                                          Text(
                                            'drink ${(DrinkType.findByDrinkType(state.planRoutine!.drinkType)).humanReadable}',
                                            style: const TextStyle(
                                              color: AppColors.textNormal,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                          Image.asset(
                                            (DrinkType.findByDrinkType(state.planRoutine!.drinkType)).image,
                                            width: 20,
                                            height: 20,
                                          ),
                                          const Text(
                                            " of",
                                            style: TextStyle(
                                              color: AppColors.textNormal,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                          Text(
                                            " ${(DrinkType.findByDrinkType(state.planRoutine!.drinkType)).quantity} ml",
                                            style: const TextStyle(
                                              color: AppColors.textNormal,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          const Text(
                                            " at ",
                                            style: TextStyle(
                                              color: AppColors.textNormal,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f400,
                                            ),
                                          ),
                                          Text(
                                            AppDateTimeUtils.formatDateTime(state.planRoutine!.time, AppDateTimeUtils.defaultTimeForm),
                                            style: const TextStyle(
                                              color: AppColors.textNormal,
                                              fontSize: Fonts.fontSize14,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   margin: edge_insets_5,
                      //   width: 25,
                      //   height: 25,
                      //   child: TextButton(
                      //     style: TextButton.styleFrom(
                      //       padding: edge_insets_0,
                      //       // shape: BoxShape.circle
                      //     ),
                      //     onPressed: () {
                      //       FirebaseAnalytics.instance.logEvent(name: "tracker_get_next_plan_routine_close_button");
                      //     },
                      //     child: const Icon(
                      //       Icons.close,
                      //       color: AppColors.grey1,
                      //       size: 18,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  TrackerGetNextPlanRoutineByUserAccountCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerGetNextPlanRoutineByUserAccountCubit
        trackerGetNextPlanRoutineByUserAccountCubit =
        TrackerGetNextPlanRoutineByUserAccountCubit(context: context);
    controller?.cubit = trackerGetNextPlanRoutineByUserAccountCubit;
    return trackerGetNextPlanRoutineByUserAccountCubit;
  }
}



class TrackerGetNextPlanRoutineByUserAccountWithTimer extends TrackerGetNextPlanRoutineByUserAccount {
  const TrackerGetNextPlanRoutineByUserAccountWithTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetNextPlanRoutineByUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerGetNextPlanRoutineByUserAccountCubit,
          TrackerGetNextPlanRoutineByUserAccountState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.planRoutine != null
              ? Container(
            // padding: edge_insets_12,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 1, color: AppColors.bgLightBlue),
                borderRadius: borderRadius.br_10,
              ),
              shadows: const [shadows.bs_primary],
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: edge_insets_12,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: borderRadius.br_100,
                              child: Image.asset(
                                'images/next_activity_illustration.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // alignment: WrapAlignment.center,
                                  children: [
                                    Text(
                                      'Take your next ',
                                      style: const TextStyle(
                                        color: AppColors.textNormal,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                    Text(
                                      (DrinkType.findByDrinkType(
                                          state.planRoutine!.drinkType))
                                          .humanReadable,
                                      style: const TextStyle(
                                        color: AppColors.textNormal,
                                        fontSize: Fonts.fontSize18,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f700,
                                      ),
                                    ),
                                    Image.asset(
                                      (DrinkType.findByDrinkType(
                                          state.planRoutine!.drinkType)).image,
                                      width: 20,
                                      height: 20,
                                    ),
                                    const Text(
                                      " break in ",
                                      style: TextStyle(
                                        color: AppColors.textNormal,
                                        fontSize: Fonts.fontSize14,
                                        fontFamily: Fonts.fontNunito,
                                        fontWeight: Fonts.f400,
                                      ),
                                    ),
                                  ],
                                ),
                                CoreCounterTimer()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Container(
                //   margin: edge_insets_5,
                //   width: 25,
                //   height: 25,
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       padding: edge_insets_0,
                //       // shape: BoxShape.circle
                //     ),
                //     onPressed: () {
                //       FirebaseAnalytics.instance.logEvent(name: "tracker_get_next_plan_routine_close_button");
                //     },
                //     child: const Icon(
                //       Icons.close,
                //       color: AppColors.grey1,
                //       size: 18,
                //     ),
                //   ),
                // )
              ],
            ),
          )
              : const SizedBox.shrink();
        },
      ),
    );
  }

}
