import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/time_picker_theme_data.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal_content/tracker_add_reminder_modal_content_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal_content/tracker_add_reminder_modal_content_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_plan_routine/tracker_create_plan_routine.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_create_plan_routine/tracker_create_plan_routine_controller.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/database/boolean_status.dart';
import '../../../../styles/edge_insets.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';

class TrackerAddReminderModalContent extends BaseModalContent<
    TrackerAddReminderModalContentController,
    TrackerAddReminderModalContentCubit,
    PlanRoutine> {
  TrackerCreatePlanRoutineController trackerCreatePlanRoutineController =
  TrackerCreatePlanRoutineController();

  DrinkType? drinkType;
  TimeOfDay? timeOfDay;

  TrackerAddReminderModalContent({super.key, this.drinkType, this.timeOfDay});

  @override
  Widget build(BuildContext originalContext) {
    initializeController(originalContext);
    return BlocProvider<TrackerAddReminderModalContentCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<TrackerAddReminderModalContentCubit,
            TrackerAddReminderModalContentState>(
            listener: (context, state) {},
            builder: (context, state) {
              return SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                      color: AppColors.white, borderRadius: borderRadius.br_t_20),
                  // padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          decoration:
                          BoxDecoration(border: borders.bb_1px_grey1),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      padding: edge_insets_16,
                                      decoration: BoxDecoration(
                                          border: borders.bb_1px_grey1),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Add reminder',
                                            style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize24,
                                              fontFamily: Fonts.fontNunito,
                                              fontWeight: Fonts.f700,
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () => closeModal(
                                                  originalContext,
                                                  ModalData(
                                                      status: BooleanStatus
                                                          .closed)),
                                              style: IconButton.styleFrom(
                                                  padding: edge_insets_0),
                                              icon: const Icon(Icons.clear))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_32,
                                      padding: edge_insets_l_16,
                                      child: const Text(
                                        'Select your drink',
                                        style: TextStyle(
                                          color: AppColors.textHeading,
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      padding: edge_insets_l_24,
                                      margin: edge_insets_t_20,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: state.drinkTypes.length,
                                        itemBuilder: (context, index) {
                                          return Wrap(
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: edge_insets_8,
                                                    child: SizedBox(
                                                      width: 52,
                                                      child: TextButton(
                                                        onPressed: () {
                                                          FirebaseAnalytics.instance.logEvent(name: "tracker_add_reminder_modal_content_button");
                                                          getCubit(context)
                                                              .selectDrinkType(
                                                              state.drinkTypes[
                                                              index]);
                                                        },
                                                        style: TextButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                          AppColors.white,
                                                          fixedSize: const Size(
                                                              60, 60),
                                                          shape: CircleBorder(
                                                            side: BorderSide(
                                                              color: state.selectedDrinkType
                                                                  .drinkType ==
                                                                  state
                                                                      .drinkTypes[
                                                                  index]
                                                                      .drinkType
                                                                  ? Colors.blue
                                                                  : AppColors
                                                                  .grey2,
                                                              width: 1,
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Image.asset(state
                                                            .drinkTypes[index]
                                                            .image),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    state.drinkTypes[index]
                                                        .humanReadable,
                                                    style: TextStyle(
                                                      color: state.selectedDrinkType
                                                          .drinkType ==
                                                          state
                                                              .drinkTypes[
                                                          index]
                                                              .drinkType
                                                          ? Colors.blue
                                                          : AppColors.grey4,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin: edge_insets_t_70,
                                      padding: edge_insets_l_16,
                                      child: const Text(
                                        'Select time',
                                        style: TextStyle(
                                          color: AppColors.textHeading,
                                          fontSize: Fonts.fontSize18,
                                          fontFamily: Fonts.fontNunito,
                                          fontWeight: Fonts.f700,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        TimeOfDay? timeOfDay =
                                        await showTimePicker(
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
                                            initialTime:
                                            state.selectedTime);
                                        if (timeOfDay != null) {
                                          getCubit(context)
                                              .selectTime(timeOfDay);
                                        }
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        margin: edge_insets_y_16,
                                        child: Text(
                                          "${state.selectedTime.hour.toString().padLeft(2, '0')} : ${state.selectedTime.minute.toString().padLeft(2, '0')}",
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: Fonts.fontSize24,
                                            fontFamily: Fonts.fontNunito,
                                            fontWeight: Fonts.f400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TrackerCreatePlanRoutine(
                                      onPlanRoutineCreated: (planRoutine) {
                                        logger.d('executing close plan routine');
                                        closeModal(
                                            context,
                                            ModalData(
                                                status: BooleanStatus.success,
                                                data: planRoutine));
                                      },
                                      controller:
                                      trackerCreatePlanRoutineController,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: edge_insets_y_20,
                                      child: SizedBox(
                                          width: 250,
                                          child: TextButton(
                                              onPressed: () async {
                                                FirebaseAnalytics.instance.logEvent(name: "tracker_add_rmc_schedule_button");
                                                await trackerCreatePlanRoutineController
                                                    .getChildCubit()
                                                    .savePlanRoutine(
                                                    PlanRoutine(
                                                      planRoutineName: 'Drink ${state.selectedDrinkType.humanReadable}',
                                                      drinkType: state.selectedDrinkType.drinkType,
                                                      createdTime: DateTime.now(),
                                                      lastUpdatedTime: DateTime.now(),
                                                      userAccountId: getLoggedUserAccount(context)!.userAccountId!,
                                                      notificationStatus: BooleanStatus.active,
                                                      time: AppDateTimeUtils.getDateTimeFromTimeOfDay(state.selectedTime),
                                                    ));
                                                // closeModal(
                                                //     context,
                                                //     ModalData(
                                                //         status: BooleanStatus
                                                //             .success));
                                              },
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                AppColors.bgPrimary,
                                              ),
                                              child: const Text(
                                                'schedule',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: Fonts.fontSize18,
                                                  fontFamily: Fonts.fontNunito,
                                                  fontWeight: Fonts.f700,
                                                ),
                                              ))),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }

  @override
  TrackerAddReminderModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAddReminderModalContentCubit trackerAddReminderModalContentCubit =
    TrackerAddReminderModalContentCubit(
        drinkType: drinkType, timeOfDay: timeOfDay);
    controller?.cubit = trackerAddReminderModalContentCubit;
    return trackerAddReminderModalContentCubit;
  }
}
