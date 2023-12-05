import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal_content/tracker_add_reminder_modal_content.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_add_reminder_modal/tracker_add_reminder_modal_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../models/drink_type.dart';

class TrackerAddReminderModal extends BaseModalWidget<
    TrackerAddReminderModalController, TrackerAddReminderModalCubit, dynamic> {
  DrinkType? drinkType;

  TrackerAddReminderModal(
      {required this.drinkType, Key? key, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAddReminderModalCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<TrackerAddReminderModalCubit,
            TrackerAddReminderModalState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SizedBox(
              width: 80,
              child: TextButton(
                  style: TextButton.styleFrom(padding: edge_insets_0),
                  onPressed: () {
                    FirebaseAnalytics.instance.logEvent(name: "tracker_add_reminder_modal_button");
                    openModal(context: context, cubit: getCubit(context));
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: edge_insets_r_4,
                        child: Text(
                          String.fromCharCode(Icons.add.codePoint),
                          style: TextStyle(
                            // inherit: false,
                            color: AppColors.bgPrimary,
                            fontSize: Fonts.fontSize18,
                            fontWeight: Fonts.f700,
                            fontFamily: Icons.add.fontFamily,
                            package: Icons.add.fontPackage,
                          ),
                        ),
                      ),
                      Container(
                        margin: edge_insets_r_8,
                        child: const Text(
                          "Add slot",
                          style: TextStyle(
                              fontWeight: Fonts.f700,
                              fontSize: Fonts.fontSize12,
                              fontFamily: Fonts.fontNunito,
                              color: AppColors.bgPrimary),
                        ),
                      ),
                    ],
                  )),
            );
          },
        ));
  }

  @override
  TrackerAddReminderModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAddReminderModalCubit trackerAddReminderModalCubit =
        TrackerAddReminderModalCubit(context: context);
    controller?.cubit = trackerAddReminderModalCubit;
    return trackerAddReminderModalCubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerAddReminderModalContent(
      drinkType: drinkType,
    );
  }
}

class TrackerAddReminderAddDrinkModal extends TrackerAddReminderModal {
  TrackerAddReminderAddDrinkModal({super.key, super.drinkType, super.onModalClosed});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAddReminderModalCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<TrackerAddReminderModalCubit,
                TrackerAddReminderModalState>(
            listener: (context, state) {},
            builder: (context, state) {
              return TextButton(
                  onPressed: () {
                    FirebaseAnalytics.instance.logEvent(name: "tracker_add_reminder_modal_add_drinks_button");
                    openModal(context: context, cubit: getCubit(context));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: AppColors.bgPrimary),
                  child: const Text(
                    "add drinks",
                    style: TextStyle(
                        fontFamily: Fonts.fontNunito,
                        fontSize: Fonts.fontSize14,
                        fontWeight: Fonts.f700,
                        color: AppColors.white),
                  ));
            }));
  }

  @override
  TrackerAddReminderModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAddReminderModalCubit trackerAddReminderModalCubit =
        TrackerAddReminderModalCubit(context: context);
    controller?.cubit = trackerAddReminderModalCubit;
    return trackerAddReminderModalCubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerAddReminderModalContent();
  }
}
