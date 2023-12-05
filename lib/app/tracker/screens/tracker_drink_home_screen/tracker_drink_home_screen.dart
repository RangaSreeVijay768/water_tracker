import 'package:beebloom_water_tracker/app/ads/widgets/ads_native_ad/ads_native_ad.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_main_screen/tracker_main_screen_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_premium_modal/tracker_drink_premium_modal.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_next_plan_routine_by_user_account/tracker_get_next_plan_routine_by_user_account.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_water_goal_widget/tracker_water_goal_widget_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../core/authentication/authentication_cubit.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../widgets/tracker_drink_feedback_modal/tracker_drink_feedback_modal.dart';
import '../../widgets/tracker_get_active_user_streak_for_user_account/tracker_get_active_user_streak_for_user_account.dart';
import '../../widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between.dart';
import '../../widgets/tracker_get_user_streak_items_by_user_account_between/tracker_get_user_streak_items_by_user_account_between.dart';
import '../../widgets/tracker_morning_notification_popup/tracker_morning_notification_popup.dart';
import '../../widgets/tracker_streak_notification_popup/tracker_streak_notification_popup.dart';
import '../../widgets/tracker_water_goal_widget/tracker_water_goal_widget.dart';
import '../tracker_drink_premium_screen/tracker_drink_premium_screen.dart';
import '../tracker_main_screen/tracker_main_screen.dart';
import 'tracker_drink_home_screen_controller.dart';
import 'tracker_drink_home_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerDrinkHomeScreen extends BaseStatelessWidget<
    TrackerDrinkHomeScreenController, TrackerDrinkHomeScreenCubit> {
  Widget? updateWidget;

  TrackerDrinkHomeScreen({Key? key, super.controller, this.updateWidget})
      : super(key: key);
  TrackerWaterGoalWidgetController trackerWaterGoalWidgetController =
      TrackerWaterGoalWidgetController();
  TrackerMainScreenController trackerMainScreenController =
      TrackerMainScreenController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkHomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkHomeScreenCubit,
          TrackerDrinkHomeScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          AuthenticationCubit authenticationCubit =
              BlocProvider.of<AuthenticationCubit>(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        children: [
                          Image.asset('images/home_bg.png'),
                          SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                      Container(
                        padding: edge_insets_x_16,
                        child: TrackerGetNextPlanRoutineByUserAccountWithTimer(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: Container(
                        padding: edge_insets_12,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: borderRadius.br_20,
                            boxShadow: [shadows.bs_grey]),
                        child: Column(
                          children: [
                            TrackerWaterGoalWidgetMini(
                              userAccount:
                                  authenticationCubit.state.userAccount!,
                              startTime: state.todaysStartTime!,
                              endTime: state.todaysEndTime!,
                              controller: trackerWaterGoalWidgetController,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TrackerMainScreenEmptyWidget(
                              controller: trackerMainScreenController,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                        side: BorderSide(
                                            color: AppColors.bgPrimary,
                                            width: 1)),
                                    onPressed: () {
                                      context.push("/tracker");
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          'Update',
                                          style: TextStyle(
                                              fontWeight: Fonts.f700,
                                              fontSize: Fonts.fontSize14),
                                        ),
                                        Icon(Icons.chevron_right)
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Container(
                        padding: edge_insets_x_12_y_16,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: borderRadius.br_20,
                            boxShadow: [shadows.bs_grey]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "This week's summary:",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize12,
                                  fontWeight: Fonts.f500,
                                  color: AppColors.grey1),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TrackerGetTaskActivityRecordQuantityAverageBetweenMini(
                              startTime: state.todaysStartTime!,
                              endTime: state.todaysEndTime!,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: edge_insets_10,
                                  decoration: BoxDecoration(
                                      color: AppColors.grey2,
                                      borderRadius: borderRadius.br_10),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Drink frequency/ day",
                                        style: TextStyle(
                                            fontSize: Fonts.fontSize12,
                                            fontWeight: Fonts.f500),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "5 times",
                                        style: TextStyle(
                                            fontWeight: Fonts.f700,
                                            fontSize: Fonts.fontSize18),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),

                  TrackerMorningNotificationPopup(),
                  TrackerStreakNotificationPopup(),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "--------------- EXPLORE MORE ---------------",
                    style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize14,
                        color: AppColors.grey1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TrackerGetActiveUserStreakForUserAccount(
                    userAccount: authenticationCubit.state.userAccount!,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: edge_insets_x_12_y_8,
                    decoration: BoxDecoration(
                      boxShadow: [shadows.bs_grey],
                      gradient: AppColors.premium,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Image.asset(
                            'images/premium_image.png',
                            width: 72,
                            height: 72,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enjoy unlimited cups with Premium\nplan",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  fontWeight: Fonts.f700,
                                  color: AppColors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sed ut perspiciatis unde omnis iste natus\nerror sit voluptatem",
                              style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                color: AppColors.white07,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TrackerDrinkPremiumModal(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: edge_insets_x_16,
                    padding: edge_insets_10,
                    decoration: BoxDecoration(
                        boxShadow: [shadows.bs_grey],
                        borderRadius: borderRadius.br_10,
                        color: AppColors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tell us how we can improve",
                              style: TextStyle(
                                fontSize: Fonts.fontSize18,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sed ut perspiciatis unde omnis iste\nnatus error sit voluptatem",
                              style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TrackerDrinkFeedbackModal()
                          ],
                        ),
                        // SizedBox(width: 16,),
                        Image.asset('images/message_icon.png', width: 100),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "--------------- EXPLORE MORE ---------------",
                    style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize14,
                        color: AppColors.grey1),
                  ),
                  AdsNativeAd(templateType: TemplateType.small),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkHomeScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkHomeScreenCubit cubit =
        TrackerDrinkHomeScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
