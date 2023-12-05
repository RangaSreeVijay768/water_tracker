import 'package:beebloom_water_tracker/app/ads/widgets/ads_app_open_ad/ads_app_open_ad.dart';
import 'package:beebloom_water_tracker/app/ads/widgets/ads_banner_ad_widget/ads_banner_ad_widget.dart';
import 'package:beebloom_water_tracker/app/ads/widgets/ads_interstitial_ad/ads_interstitial_ad.dart';
import 'package:beebloom_water_tracker/app/ads/widgets/ads_interstitial_ad/ads_interstitial_ad_controller.dart';
import 'package:beebloom_water_tracker/app/ads/widgets/ads_native_ad/ads_native_ad.dart';
import 'package:beebloom_water_tracker/app/ads/widgets/ads_native_ad/ads_native_ad_controller.dart';
import 'package:beebloom_water_tracker/app/core/authentication/authentication_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/models/page_status.dart';
import 'package:beebloom_water_tracker/app/core/models/time_filter.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/core/widgets/core_counter_timer/core_counter_timer_controller.dart';
import 'package:beebloom_water_tracker/app/core/widgets/expanded_section/expanded_section.dart';
import 'package:beebloom_water_tracker/app/core/widgets/expanded_section/expanded_section_controller.dart';
import 'package:beebloom_water_tracker/app/home_widget/home_widget_service.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:beebloom_water_tracker/app/themes/text_styles.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen_state.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_user_streak_item/tracker_add_user_streak_item_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_task_activity_record/tracker_create_task_activity_record.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_task_activity_record/tracker_create_task_activity_record_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_custom_popup_menu/tracker_custom_popup_menu.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_next_plan_routine_by_user_account/tracker_get_next_plan_routine_by_user_account.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_task_activity_record_quantity_average_between/tracker_get_task_activity_record_quantity_average_between_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_goal_achieved_modal/tracker_goal_achieved_modal.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_goal_achieved_modal/tracker_goal_achieved_modal_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_by_date_between/tracker_task_activity_records_aggregate_by_date_between.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_by_date_between/tracker_task_activity_records_aggregate_by_date_between_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_between_modal/tracker_task_activity_records_between_modal.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_time_filter/tracker_time_filter.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_water_goal_widget/tracker_water_goal_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_water_goal_widget/tracker_water_goal_widget_controller.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../widgets/tracker_add_user_streak_item/tracker_add_user_streak_item.dart';
import '../../widgets/tracker_half_goal_acheived_modal/tracker_half_goal_acheived_modal.dart';
import '../../widgets/tracker_half_goal_acheived_modal/tracker_half_goal_acheived_modal_controller.dart';
import '../../widgets/trackers_change_drink_type_modal/trackers_change_drink_type_modal.dart';
import '../tracker_drink_set_sleep_cycle_step_screen/tracker_drink_set_sleep_cycle_step_screen.dart';

class TrackerDrinkWaterScreen extends BaseStatelessWidget<
    TrackerDrinkWaterScreenController,
    TrackerDrinkWaterScreenCubit> {
  final TrackerWaterGoalWidgetController trackerWaterGoalWidgetController =
  TrackerWaterGoalWidgetController();
  final ExpandedSectionController expandedSectionController =
  ExpandedSectionController();
  final AdsNativeAdController adsNativeAdController = AdsNativeAdController();
  CoreCounterTimerController coreCounterTimerController =
  CoreCounterTimerController();
  String dropdownValue = 'last 1 week';

  late TrackerTaskActivityRecordsAggregateSumByDrinkTypeController
  taskActivityRecordsAggregateSumByDrinkTypeController;
  late TrackerGetTaskActivityRecordQuantityAverageBetweenController
  taskActivityRecordQuantityAverageBetweenController;
  late TrackerTaskActivityRecordsAggregateByDateBetweenController
  trackerTaskActivityRecordsAggregateByDateBetweenController;
  TrackerCreateTaskActivityRecordController createTaskActivityRecordController =
  TrackerCreateTaskActivityRecordController();
  TrackerGoalAchievedModalController trackerGoalAchievedModalController =
  TrackerGoalAchievedModalController();
  TrackerHalfGoalAcheivedModalController
  trackerHalfGoalAcheivedModalController =
  TrackerHalfGoalAcheivedModalController();
  AdsInterstitialAdController adsInterstitialAdController =
  AdsInterstitialAdController();

  TrackerDrinkWaterScreen({super.key}) {
    taskActivityRecordsAggregateSumByDrinkTypeController =
        TrackerTaskActivityRecordsAggregateSumByDrinkTypeController();
    taskActivityRecordQuantityAverageBetweenController =
        TrackerGetTaskActivityRecordQuantityAverageBetweenController();
    trackerTaskActivityRecordsAggregateByDateBetweenController =
        TrackerTaskActivityRecordsAggregateByDateBetweenController();
  }

  TrackerAddUserStreakItemController trackerAddUserStreakItemController =
  TrackerAddUserStreakItemController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkWaterScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkWaterScreenCubit,
          TrackerDrinkWaterScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          AuthenticationCubit authenticationCubit =
          BlocProvider.of<AuthenticationCubit>(context);

          return (state.pageStatus == PageStatus.loaded)
              ? Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Hydration tracker",
                      style: TextStyles.textNormal),
                  MenuPopup(
                    onEditGoalChanged: (modalData) {
                      getCubit(context)
                          .updateTaskActivityGoal(modalData.data);
                      trackerWaterGoalWidgetController
                          .getChildCubit()
                          .getTaskActivityGoalByUserAccountAndGoalType(
                          getLoggedUserAccount(context)!);
                    },
                  )
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // NotificationsScheduleNotification(),
                  //Notifications reminder
                  state.planRoutines!.isEmpty
                      ? Container(
                    margin: edge_insets_16,
                    padding: edge_insets_x_12_y_8,
                    decoration: BoxDecoration(
                        border: borders.b_1px_grey4,
                        borderRadius: borderRadius.br_10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
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
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    "Create your water consumption schedule so you never miss on it. ",
                                  ),
                                  TextButton.icon(
                                      onPressed: () {
                                        FirebaseAnalytics.instance
                                            .logEvent(
                                            name:
                                            "tracker_drink_water_screen_setup_now_button");
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const TrackerDrinkSetSleepCycleStepScreen()));
                                      },
                                      style: TextButton.styleFrom(
                                          padding: edge_insets_0,
                                          shape:
                                          const RoundedRectangleBorder()),
                                      icon: const Text(
                                        "Setup now",
                                        style: TextStyle(
                                            color:
                                            AppColors.primary,
                                            fontWeight: Fonts.f700,
                                            fontSize:
                                            Fonts.fontSize14),
                                      ),
                                      label: const Icon(
                                        Icons.arrow_forward,
                                        color: AppColors.primary,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                      : Container(
                    padding: edge_insets_16,
                    child: TrackerGetNextPlanRoutineByUserAccount(),
                  ),
                  AdsInterstitialAd(
                    controller: adsInterstitialAdController,
                  ),
                  AdsAppOpenAd(),
                  AdsInterstitialAd(),
                  TrackerWaterGoalWidget(
                    userAccount: authenticationCubit.state.userAccount!,
                    startTime: state.todaysStartTime!,
                    endTime: state.todaysEndTime!,
                    controller: trackerWaterGoalWidgetController,
                  ),
                  Container(
                    padding: edge_insets_x_16,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TrackerTaskActivityRecordsBetweenModal(
                              startTime: state.todaysStartTime!,
                              endTime: state.todaysEndTime!,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 3),
                                        child: Image.asset(
                                          state.selectedDrinkType!.image,
                                          width: 21,
                                          height: 21,
                                        ),
                                      ),
                                      Text(
                                        "${state.selectedDrinkType!
                                            .quantity} ml",
                                        style: const TextStyle(
                                            fontFamily: 'Nunito'),
                                      ),
                                    ],
                                  ),
                                ),
                                TrackersChangeDrinkTypeModal(
                                    onModalClosed: (value) {
                                      if (value.status ==
                                          BooleanStatus.success) {
                                        getCubit(context)
                                            .updateDrinkType(value.data);
                                        createTaskActivityRecordController
                                            .setDrinkType(value.data);
                                      }
                                    })
                              ],
                            )
                          ],
                        ),
                        TrackerAddUserStreakItem(
                          userAccount: authenticationCubit.state.userAccount!,
                          controller: trackerAddUserStreakItemController,
                        ),
                        TrackerCreateTaskActivityRecord(
                          controller: createTaskActivityRecordController,
                          onTaskActivityRecordCreated:
                              (taskActivityRecordId) async {
                            AuthenticationCubit authenticationCubit =
                            BlocProvider.of<AuthenticationCubit>(
                                context);
                            double todaysSum =
                            await trackerWaterGoalWidgetController
                                .cubit!
                                .getTaskActivityRecordQuantitySumBetween(
                                authenticationCubit
                                    .state.userAccount!,
                                state.todaysStartTime!,
                                state.todaysEndTime!);
                            UserTaskActivityGoal userTaskActivityGoal =
                            await getCubit(context)
                                .updateUserTaskActivityGoal(
                                todaysSum);
                            HomeWidgetService.updateLiveWidgetData();

                            await trackerAddUserStreakItemController
                                .getChildCubit().addUserStreakItem(
                                trackerAddUserStreakItemController
                                    .getChildCubit().createRequestData());

                            if (!state.isHalfGoalReached &&
                                userTaskActivityGoal.currentGoalValue >=
                                    (userTaskActivityGoal
                                        .targetGoalValue /
                                        2) &&
                                userTaskActivityGoal.currentGoalValue <
                                    userTaskActivityGoal
                                        .targetGoalValue) {
                              trackerHalfGoalAcheivedModalController
                                  .openModal();
                              getCubit(context).emitState(state.copyWith(
                                  isHalfGoalReached: true));
                            } else if (!state.isGoalReached &&
                                userTaskActivityGoal.currentGoalValue >=
                                    userTaskActivityGoal
                                        .targetGoalValue) {
                              trackerGoalAchievedModalController
                                  .openModal();
                              getCubit(context).emitState(
                                  state.copyWith(isGoalReached: true));
                            } else {
                              Future.delayed(Duration(milliseconds: 500),
                                      () {
                                    this
                                        .expandedSectionController
                                        .clickEventEmitter
                                        .value = true;
                                    Future.delayed(
                                        Duration(milliseconds: 500), () {
                                      this
                                          .adsNativeAdController
                                          .getChildCubit()
                                          .setAdShow(true);
                                    });
                                  });

                              getCubit(context).setShowNativeAd(this
                                  .expandedSectionController
                                  .clickEventEmitter
                                  .value);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  ExpandedSection(
                    expandedSectionController: expandedSectionController,
                    child: Column(
                      children: [
                        Container(
                          margin: edge_insets_x_16,
                          padding: edge_insets_5,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              boxShadow: [shadows.bs_primary],
                              borderRadius: borderRadius.br_10),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              AdsNativeAd(
                                templateType: TemplateType.medium,
                                controller: adsNativeAdController,
                              ),
                              Container(
                                margin: edge_insets_5,
                                width: 25,
                                height: 25,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: edge_insets_0,
                                      backgroundColor: AppColors.grey4
                                    // shape: BoxShape.circle
                                  ),
                                  onPressed: () {
                                    FirebaseAnalytics.instance.logEvent(
                                        name: "ads_native_ad_close");
                                    getCubit(context).setShowNativeAd(this
                                        .expandedSectionController
                                        .clickEventEmitter
                                        .value);
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: AppColors.textHeading,
                                    size: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: edge_insets_x_16,
                    child: Column(
                      children: [
                        TrackerHalfGoalAcheivedModal(
                          controller:
                          trackerHalfGoalAcheivedModalController,
                          onModalClosed: (data) {
                            adsInterstitialAdController
                                .getChildCubit()
                                .showInterstitialAd();
                          },
                        ),
                        TrackerGoalAchievedModal(
                          controller: trackerGoalAchievedModalController,
                          onModalClosed: (data) {
                            adsInterstitialAdController
                                .getChildCubit()
                                .showInterstitialAd();
                          },
                        ),
                        Container(
                          child:
                          TrackerTaskActivityRecordsAggregateByDateBetweenScreen(
                            startTime: DateTime.now()
                                .subtract(const Duration(days: 7)),
                            endTime: DateTime.now(),
                            userAccount: getLoggedUserAccount(context)!,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: edge_insets_8,
                    decoration: BoxDecoration(
                      border: borders.b_1px_grey2,
                      borderRadius: borderRadius.br_10,
                    ),
                    child: AdsBannerAdWidget(),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: edge_insets_x_16,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Your performance',
                            style: TextStyle(
                              color: AppColors.textHeading,
                              fontSize: Fonts.fontSize18,
                              fontFamily: Fonts.fontNunito,
                              fontWeight: Fonts.f700,
                            ),
                          ),
                        ),
                        TrackerTimeFilter(
                          timeFilters: getTimeFilters(),
                          timeFilterClicked: (timeFilter) {
                            taskActivityRecordQuantityAverageBetweenController
                                .cubit!
                                .getTaskActivityRecordQuantityAverageBetween(
                                getLoggedUserAccount(context)!,
                                timeFilter.startTime,
                                timeFilter.endTime);
                            taskActivityRecordsAggregateSumByDrinkTypeController
                                .cubit!
                                .loadTaskActivityRecordsAggregateSum(
                                getLoggedUserAccount(context)!,
                                timeFilter.startTime,
                                timeFilter.endTime);
                            taskActivityRecordsAggregateSumByDrinkTypeController
                                .cubit!
                                .loadTaskActivityRecordsAggregateSum(
                                getLoggedUserAccount(context)!,
                                timeFilter.startTime,
                                timeFilter.endTime);
                          },
                        ),
                        Container(
                          margin: edge_insets_t_20,
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: edge_insets_20,
                                  // margin: edge_insets_b_20,
                                  decoration: BoxDecoration(
                                      border: borders.b_1px_grey4,
                                      borderRadius: borderRadius.br_5),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: const Text(
                                          'Avg. Consumption /    \nday',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ),
                                      TrackerGetTaskActivityRecordQuantityAverageBetween(
                                        startTime: state.historyStartTime!,
                                        endTime: state.historyEndTime!,
                                        controller:
                                        taskActivityRecordQuantityAverageBetweenController,
                                      )
                                    ],
                                  )
                                  ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                  padding: edge_insets_20,
                                  decoration: BoxDecoration(
                                      border: borders.b_1px_grey4,
                                      borderRadius: borderRadius.br_5),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: const Text(
                                          'Drink frequency / day',
                                          style: TextStyle(
                                            color: AppColors.bgPrimary,
                                            fontSize: Fonts.fontSize12,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: edge_insets_y_20,
                                        margin: edge_insets_t_16,
                                        child: const Text(
                                          '5 times',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.textHeading,
                                            fontSize: Fonts.fontSize24,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          // height: 200,
                          margin: edge_insets_y_24,
                          child: TrackerGetDayWiseDrinkWaterAggregateSumByUserAccountGraph(
                              startTime: state.historyStartTime!,
                              endTime: state.historyEndTime!,
                              userAccount: getLoggedUserAccount(context)!,
                              controller:
                              trackerTaskActivityRecordsAggregateByDateBetweenController),
                        ),
                        Container(
                          decoration:
                          BoxDecoration(border: borders.bt_1px_grey4),
                          child: TrackerTaskActivityRecordsAggregateSumByDrinkType(
                              controller:
                              taskActivityRecordsAggregateSumByDrinkTypeController,
                              startTime: state.historyStartTime,
                              endTime: state.historyEndTime),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // bottomNavigationBar: const SizedBox(
            //   width: double.infinity,
            //   child: AdsBannerAdWidget(),
            // )
          )
              : Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Hydration tracker",
                      style: TextStyles.textNormal),
                  MenuPopup(
                    onEditGoalChanged: (modalData) {
                      getCubit(context)
                          .updateTaskActivityGoal(modalData.data);
                      trackerWaterGoalWidgetController
                          .getChildCubit()
                          .getTaskActivityGoalByUserAccountAndGoalType(
                          getLoggedUserAccount(context)!);
                    },
                  )
                ],
              ),
            ),
            body: Center(
                child: Container(
                  width: 230,
                  padding: edge_insets_y_24,
                  decoration: BoxDecoration(
                      boxShadow: const [shadows.bs_primary],
                      color: AppColors.white,
                      borderRadius: borderRadius.br_10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoadingAnimationWidget.discreteCircle(
                          color: AppColors.bgPrimary,
                          size: 50,
                          secondRingColor: AppColors.bmiTracker,
                          thirdRingColor: AppColors.waterPrimary),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Please wait\nwhile loading....")
                    ],
                  ),
                )),
            // bottomNavigationBar: const SizedBox(
            //   width: double.infinity,
            //   child: AdsBannerAdWidget(),
            // )
          );
        },
      ),
    );
  }

  List<TimeFilter> getTimeFilters() {
    DateTime currentTime = DateTime.now();
    return [
      TimeFilter(
          startTime: AppDateTimeUtils.getStartTimeOfDateTime(
              currentTime.subtract(const Duration(days: 8))),
          endTime: AppDateTimeUtils.getEndTimeOfDateTime(
              currentTime.subtract(const Duration(days: 1))),
          humanReadable: '1 Week'),
      TimeFilter(
          startTime: AppDateTimeUtils.getStartTimeOfDateTime(
              currentTime.subtract(const Duration(days: 30))),
          endTime: AppDateTimeUtils.getEndTimeOfDateTime(
              currentTime.subtract(const Duration(days: 1))),
          humanReadable: '1 Month'),
      TimeFilter(
          startTime: AppDateTimeUtils.getStartTimeOfDateTime(
              currentTime.subtract(const Duration(days: 90))),
          endTime: AppDateTimeUtils.getEndTimeOfDateTime(
              currentTime.subtract(const Duration(days: 1))),
          humanReadable: '3 Months')
    ];
  }

  @override
  TrackerDrinkWaterScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkWaterScreenCubit cubit =
    TrackerDrinkWaterScreenCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
