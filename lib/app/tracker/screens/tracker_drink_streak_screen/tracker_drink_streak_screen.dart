import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_user_streak_items_by_user_account_between/tracker_get_user_streak_items_by_user_account_between.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/authentication/authentication_cubit.dart';
import '../../widgets/tracker_buy_streak_modal/tracker_buy_streak_modal.dart';
import '../../widgets/tracker_streak_calendar/tracker_streak_calendar.dart';
import 'tracker_drink_streak_screen_controller.dart';
import 'tracker_drink_streak_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerDrinkStreakScreen extends BaseStatelessWidget<
    TrackerDrinkStreakScreenController, TrackerDrinkStreakScreenCubit> {
  TrackerDrinkStreakScreen({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkStreakScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkStreakScreenCubit,
          TrackerDrinkStreakScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: state.getActiveUserStreakForUserAccountResponse != null
                ? SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              margin: edge_insets_b_32,
                              width: MediaQuery.sizeOf(context).width,
                              height: MediaQuery.sizeOf(context).height / 2.1,
                              decoration: BoxDecoration(
                                gradient: AppColors.premiumStreak,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/streak_active.png",
                                    height: 150,
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Current Streak",
                                    style: TextStyle(
                                        fontSize: Fonts.fontSize14,
                                        fontWeight: Fonts.f700,
                                        color: AppColors.white),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "“You're doing an amazing job, you are on a good streak so far”",
                                    style: TextStyle(
                                        fontSize: Fonts.fontSize12,
                                        color: AppColors.grey3),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: edge_insets_x_16,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: borderRadius.br_10,
                                  boxShadow: [shadows.bs_primary]),
                              child: Row(
                                children: [
                                  Expanded(
                                    child:
                                        TrackerGetUserStreakItemsByUserAccountBetween(
                                            userAccount: getLoggedUserAccount(context)!,
                                            startTime:
                                            AppDateTimeUtils.getWeekStartTimeOfDateTime(
                                                AppDateTimeUtils.getCurrentTimeOfDay()),
                                            endTime: AppDateTimeUtils.getWeekEndTimeOfDateTime(
                                                AppDateTimeUtils.getCurrentTimeOfDay())
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: edge_insets_x_16,
                          child: Text(
                            "Streak Calendar",
                            style: TextStyle(
                                fontSize: Fonts.fontSize18,
                                fontWeight: Fonts.f700),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TrackerGetUserStreakItemsByUserAccountBetweenWithCalendar(
                            userAccount: getLoggedUserAccount(context)!,
                            startTime:
                                AppDateTimeUtils.getMonthStartTimeOfDateTime(
                                    AppDateTimeUtils.getCurrentTimeOfDay()),
                            endTime: AppDateTimeUtils.getMonthEndTimeOfDateTime(
                                AppDateTimeUtils.getCurrentTimeOfDay())
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: edge_insets_x_16,
                          child: Text(
                            "Streak Freeze",
                            style: TextStyle(
                                fontSize: Fonts.fontSize18,
                                fontWeight: Fonts.f700),
                          ),
                        ),
                        Container(
                          padding: edge_insets_16,
                          child: Row(
                            children: [
                              Image.asset(
                                "images/half_bubble_big.png",
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your remining Streak freeze is 5",
                                    style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Need more, Buy now",
                                    style: TextStyle(
                                        fontSize: Fonts.fontSize11,
                                        fontWeight: Fonts.f500,
                                        color: AppColors.grey1),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  TrackerBuyStreakModal()
                                ],
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : Text('Loading'),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkStreakScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkStreakScreenCubit cubit =
        TrackerDrinkStreakScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
