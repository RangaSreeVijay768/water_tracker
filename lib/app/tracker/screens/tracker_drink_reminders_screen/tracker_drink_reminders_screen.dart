import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_reminders_screen/tracker_drink_reminders_screen_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_reminders_screen/tracker_drink_reminders_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_drink_type_and_plan_routines_by_user_account/tracker_get_drink_type_and_plan_routine_by_user_account_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_request_user_permissions/trackers_request_user_permissions_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ads/widgets/ads_banner_ad_widget/ads_banner_ad_widget.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../widgets/tracker_get_drink_type_and_plan_routines_by_user_account/tracker_get_drink_type_and_plan_routine_by_user_account.dart';

class TrackerDrinkRemindersScreen extends BaseStatelessWidget<
    TrackerDrinkRemindersScreenController, TrackerDrinkRemindersScreenCubit> {
  TrackerDrinkRemindersScreen({Key? key}) : super(key: key);

  TrackersRequestUserPermissionsController
      trackersRequestUserPermissionsController =
      TrackersRequestUserPermissionsController();

  TrackerGetDrinkTypeAndPlanRoutineByUserAccountController
      trackerGetDrinkTypeAndPlanRoutineByUserAccountController =
      TrackerGetDrinkTypeAndPlanRoutineByUserAccountController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkRemindersScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkRemindersScreenCubit,
          TrackerDrinkRemindersScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Reminder clock",
                        style: TextStyle(
                          fontFamily: Fonts.fontNunito,
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                      TrackerAddReminderAddDrinkModal(
                        onModalClosed: (data) {
                          trackerGetDrinkTypeAndPlanRoutineByUserAccountController
                              .getChildCubit()
                              .getDrinkTypeAndPlanRoutinesByUserAccount(
                                  getLoggedUserAccount(context)!);
                        },
                      )
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                    padding: edge_insets_16,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        // TrackersRequestUserPermissions(
                        //   controller: trackersRequestUserPermissionsController,
                        // ),
                        TrackerGetDrinkTypeAndPlanRoutineByUserAccount(
                          controller:
                              trackerGetDrinkTypeAndPlanRoutineByUserAccountController,
                        ),
                      ],
                    )),
              ),
              bottomNavigationBar: const SizedBox(
                width: double.infinity,
                child: AdsBannerAdWidget(),
              ));
        },
      ),
    );
  }

  @override
  TrackerDrinkRemindersScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkRemindersScreenCubit trackerDrinkRemindersScreenCubit =
        TrackerDrinkRemindersScreenCubit();
    controller?.cubit = trackerDrinkRemindersScreenCubit;
    return trackerDrinkRemindersScreenCubit;
  }
}
