import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_add_reminder_step/tracker_drink_add_reminder_step_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_drink_reminders_stepper_widget/tracker_drink_add_reminder_step/tracker_drink_add_reminder_step_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/shadows.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';

const cellRed = Color(0xffc73232);
const cellMustard = Color(0xffd7aa22);
const cellGrey = Color(0xffcfd4e0);
const cellBlue = Color(0xff1553be);
const background = Color(0xff242830);

class TrackerDrinkAddReminderStep extends BaseStatelessWidget<
    TrackerDrinkAddReminderStepController, TrackerDrinkAddReminderStepCubit> {
  Function(TrackerDrinkAddReminderStepState) onStepFinished;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkAddReminderStepCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkAddReminderStepCubit,
          TrackerDrinkAddReminderStepState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(125),
              child: AppBar(
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/background.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          FirebaseAnalytics.instance.logEvent(name: "tracker_drink_add_reminder_step_back_button");
                          WizardController controller =
                          WizardController.of(context);
                          controller.goBack();
                        },
                      )
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,
                backgroundColor: AppColors.white,
                // title: Text('Hydration weight page'),
              ),
            ),
            body: SingleChildScrollView(
                child: Container(
                  margin: edge_insets_t_8,
                  // padding: const EdgeInsets.only(top: 25),
                  padding: edge_insets_24,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: borderRadius.br_t_20,
                    boxShadow: [shadows.bs_primary],
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset("images/home.png", fit: BoxFit.fitWidth),
                      LinearPercentIndicator(
                        backgroundColor: AppColors.grey2,
                        lineHeight: 8,
                        barRadius: const Radius.circular(10),
                        percent: 2/3,
                        progressColor: AppColors.bgPrimary,
                        padding: edge_insets_0,
                      ),
                      const SizedBox(height: 36),
                      const Text(
                        "Add drinks",
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize24,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Add all your favorite drinks so that we won't miss it in your schedule",
                        style: TextStyle(
                          color: AppColors.grey1,
                          fontSize: Fonts.fontSize14,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f400,
                        ),
                      ),
                      const SizedBox(height: 36),
                      LayoutGrid(
                        columnGap: 32,
                        rowGap: 20,
                        columnSizes: [
                          1.fr,
                          1.fr,
                        ],
                        rowSizes: const [auto, auto],
                        children: state.drinkTypes.map((e) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                e.humanReadable,
                                style: const TextStyle(
                                  fontFamily: Fonts.fontNunito,
                                  fontSize: Fonts.fontSize18,
                                  fontWeight: Fonts.f400,
                                  color: AppColors.grey1,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding: edge_insets_14,
                                decoration: BoxDecoration(
                                  border: state.drinkTypeCountMap[e] == 0 ? borders.b_1px_grey2 : borders.b_1px_bgPrimary,
                                  borderRadius: borderRadius.br_5
                                ),
                                child: Image.asset(
                                  e.image,
                                  height: 120,
                                  width: 120,
                                ),
                              ),
                              const SizedBox(height: 16),
                              state.drinkTypeCountMap[e] == 0
                                  ? Row(children: [Expanded(child: ElevatedButton(
                                onPressed: () {
                                  FirebaseAnalytics.instance.logEvent(name: "tracker_drink_add_reminder_step_add_drink_quantity_button");
                                  getCubit(context).addDrinkQuantity(e, 1);
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: edge_insets_x_40_y_10,
                                  backgroundColor: AppColors.bgPrimary,
                                ),
                                child: const Text(
                                  "Add",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontFamily: Fonts.fontNunito,
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                              ))],)
                                  : Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      FirebaseAnalytics.instance.logEvent(name: "tracker_drink_add_reminder_step_remove_button");
                                      getCubit(context)
                                          .addDrinkQuantity(e, -1);
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: AppColors.bgPrimary,
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: borders.b_1px_bgPrimary,
                                          borderRadius: borderRadius.br_30
                                        ),
                                        padding: edge_insets_y_8,
                                        child: Text(state.drinkTypeCountMap[e]
                                            .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: Fonts.fontNunito,
                                            fontSize: Fonts.fontSize14,
                                            fontWeight: Fonts.f700,
                                          ),),
                                      ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      FirebaseAnalytics.instance.logEvent(name: "tracker_drink_add_reminder_step_add_button");
                                      getCubit(context)
                                          .addDrinkQuantity(e, 1);
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: AppColors.bgPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }).toList(),
                      )
                    ],
                  ),
                )),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey2,
                    blurRadius: 12,
                    offset: Offset(0, -7),
                    spreadRadius: 0,
                  )
                ],
              ),
              height: 90,
              child: Padding(
                padding: edge_insets_t_10,
                child: Column(
                  children: [
                    // Center(
                    ElevatedButton(
                      // onHover: HSLColor.fromColor(Colors.black),
                      style: ElevatedButton.styleFrom(
                        padding: edge_insets_x_110_y_20,
                        backgroundColor: AppColors.bgPrimary,
                        alignment: Alignment.bottomCenter,
                      ),
                      onPressed: () {
                        FirebaseAnalytics.instance.logEvent(name: "tracker_delete_account_popup_cancel_button");
                        onStepFinished(getCubit(context).state);
                      },
                      // child: Center(
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: AppColors.white,
                          fontFamily: Fonts.fontNunito,
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkAddReminderStepCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkAddReminderStepCubit cubit =
    TrackerDrinkAddReminderStepCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }

  TrackerDrinkAddReminderStep({required this.onStepFinished, super.key});

}
