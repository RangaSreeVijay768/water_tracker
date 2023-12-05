import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_analytics_screen/tracker_drink_analytics_screen.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../ads/widgets/ads_banner_ad_widget/ads_banner_ad_widget.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../themes/shadows.dart';
import '../tracker_drink_home_screen/tracker_drink_home_screen.dart';
import '../tracker_drink_premium_screen/tracker_drink_premium_screen.dart';
import '../tracker_drink_streak_screen/tracker_drink_streak_screen.dart';
import 'tracker_main_screen_controller.dart';
import 'tracker_main_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerMainScreen extends BaseStatelessWidget<TrackerMainScreenController,
    TrackerMainScreenCubit> {
  TrackerMainScreen({Key? key, super.controller}) : super(key: key) {
    tabWidgets = {
      'TRACKER': TrackerDrinkWaterScreen(),
      'STREAK': TrackerDrinkStreakScreen(),
      'HOME': TrackerDrinkHomeScreen(),
      // 'ANALYTICS': TrackerDrinkPremiumScreen(),
      'ANALYTICS1': TrackerDrinkAnalyticsScreen(),
    };
  }

  late final Map<String, Widget> tabWidgets;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerMainScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerMainScreenCubit, TrackerMainScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: tabWidgets[state.selectedWidgetName],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  color: AppColors.white, boxShadow: [shadows.bs_primary]),
              alignment: Alignment.center,
              height: 70,
              padding: edge_insets_x_7,
              child: Row(
                children: [
                  TextButton(
                      style:
                          TextButton.styleFrom(shape: RoundedRectangleBorder()),
                      onPressed: () {
                        getCubit(context).selectWidget('HOME');
                      },
                      child: Container(
                        padding: edge_insets_13,
                        child: Icon(
                          Icons.home_outlined,
                          color: state.selectedWidgetName == 'HOME'
                              ? AppColors.bgPrimary
                              : AppColors.grey4,
                        ),
                      )),
                  TextButton(
                      style:
                          TextButton.styleFrom(shape: RoundedRectangleBorder()),
                      onPressed: () {
                        getCubit(context).selectWidget('STREAK');
                      },
                      child: Container(
                        padding: edge_insets_13,
                        child: Image.asset(
                          'images/half_bubble.png',
                          color: state.selectedWidgetName == 'STREAK'
                              ? AppColors.bgPrimary
                              : AppColors.grey4,
                          width: 24,
                          height: 24,
                        ),
                      )),
                  TextButton(
                      style:
                          TextButton.styleFrom(shape: RoundedRectangleBorder()),
                      onPressed: () {
                        getCubit(context).selectWidget('TRACKER');
                      },
                      child: Container(
                        padding: edge_insets_13,
                        decoration: BoxDecoration(
                            color: AppColors.textHeading,
                            borderRadius: borderRadius.br_100),
                        child: Image.asset(
                          'images/bubble-outline.png',
                          color: AppColors.white,
                          width: 24,
                          height: 24,
                        ),
                      )),
                  TextButton(
                      style:
                          TextButton.styleFrom(shape: RoundedRectangleBorder()),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TrackerDrinkPremiumScreen()));
                      },
                      child: Container(
                        padding: edge_insets_13,
                        child: Icon(
                          Icons.analytics,
                          color: state.selectedWidgetName == 'ANALYTICS'
                              ? AppColors.bgPrimary
                              : AppColors.grey4,
                        ),
                      )),
                  TextButton(
                      style:
                          TextButton.styleFrom(shape: RoundedRectangleBorder()),
                      onPressed: () {
                        getCubit(context).selectWidget('ANALYTICS1');
                      },
                      child: Container(
                        padding: edge_insets_13,
                        child: Icon(
                          Icons.analytics_outlined,
                          color: state.selectedWidgetName == 'ANALYTICS1'
                              ? AppColors.bgPrimary
                              : AppColors.grey4,
                        ),
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerMainScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerMainScreenCubit cubit = TrackerMainScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}

class TrackerMainScreenEmptyWidget extends TrackerMainScreen {
  TrackerMainScreenEmptyWidget({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerMainScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerMainScreenCubit, TrackerMainScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }
}
