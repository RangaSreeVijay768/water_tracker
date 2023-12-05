import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_custom_popup_menu/tracker_custom_popup_menu_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_custom_popup_menu/tracker_custom_popup_menu_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../tracker_delete_account_popup/tracker_delete_account_popup.dart';
import '../tracker_edit_goal_modal/tracker_edit_goal_modal.dart';

/// Flutter code sample for [PopupMenuButton].

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

class MenuPopup extends BaseStatelessWidget<TrackerCustomPopupMenuController,
    TrackerCustomPopupMenuCubit> {
  Function(ModalData)? onEditGoalChanged;

  MenuPopup({super.key, this.onEditGoalChanged});

  // @override
  // State<MenuPopup> createState() => _PopupMenuExampleState();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCustomPopupMenuCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerCustomPopupMenuCubit,
          TrackerCustomPopupMenuState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            padding: edge_insets_0,
            child: PopupMenuButton(
              padding: edge_insets_0,
              elevation: 10,
              shadowColor: AppColors.textHeading,
              surfaceTintColor: AppColors.bgPrimary,
              constraints: const BoxConstraints(
                // minWidth: 90,
                maxWidth: 200,
              ),
              color: AppColors.white,
              shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10),
              icon: const Icon(
                Icons.menu,
                color: AppColors.textHeading,
              ),
              offset: const Offset(0.0, 60.0),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(border: borders.bb_1px_grey4),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              padding: edge_insets_0,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                          onPressed: () {
                            FirebaseAnalytics.instance.logEvent(name: "tracker_custom_popup_menu_reminders_button");
                            Navigator.of(context).pop();
                            context.push("/reminders");
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Reminders",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: AppColors.textHeading),
                            ),
                          )),
                    )),
                PopupMenuItem(
                    onTap: () {},
                    height: 10,
                    child: state.taskActivityGoal != null
                        ? Container(
                      decoration:
                      BoxDecoration(border: borders.bb_1px_grey4),
                      width: 200,
                      child: Wrap(children: [
                        TrackerEditGoalModal(
                          taskActivityGoal: state.taskActivityGoal!,
                          onModalClosed: (modalData) {
                            if (onEditGoalChanged != null) {
                              onEditGoalChanged!(modalData);
                            }
                            Navigator.of(context).pop(modalData);

                          },
                        ),
                      ]),
                    )
                        : const SizedBox.shrink()),
                const PopupMenuItem(
                  child: TrackerDeleteAccountPopup(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerCustomPopupMenuCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCustomPopupMenuCubit cubit =
    TrackerCustomPopupMenuCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
