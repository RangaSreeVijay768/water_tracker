import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_premium_screen/tracker_drink_premium_screen.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_change_drink_type_modal/trackers_change_drink_type_modal_content/trackers_change_drink_type_modal_content_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_change_drink_type_modal/trackers_change_drink_type_modal_content/trackers_change_drink_type_modal_content_cubit.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_select_drink_type/trackers_select_drink_type_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:go_router/go_router.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/borders.dart';
import '../../../../themes/fonts.dart';
import '../../trackers_select_drink_type/trackers_select_drink_type.dart';

class TrackersChangeDrinkTypeModalContent extends BaseModalContent<
    TrackersChangeDrinkTypeModalContentController,
    TrackersChangeDrinkTypeModalContentCubit,
    DrinkType> {
  DrinkType? drinkType;

  TrackersChangeDrinkTypeModalContent({Key? key, this.drinkType})
      : super(key: key);

  TrackersSelectDrinkTypeController trackersSelectDrinkTypeController =
      TrackersSelectDrinkTypeController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackersChangeDrinkTypeModalContentCubit>(
      create: (context) => TrackersChangeDrinkTypeModalContentCubit(),
      child: BlocBuilder<TrackersChangeDrinkTypeModalContentCubit,
          TrackersChangeDrinkTypeModalContentState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.white, borderRadius: borderRadius.br_t_20),
              // padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: edge_insets_16,
                              decoration:
                                  BoxDecoration(border: borders.bb_1px_grey1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Change drink',
                                    style: TextStyle(
                                      color: AppColors.textHeading,
                                      fontSize: Fonts.fontSize24,
                                      fontFamily: Fonts.fontNunito,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () => Navigator.pop(context),
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
                                  color: Color(0xFF171717),
                                  fontSize: 18,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            TrackersSelectDrinkType(
                                controller: trackersSelectDrinkTypeController),
                            const SizedBox(
                              height: 80,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: edge_insets_y_16,
                    alignment: Alignment.center,
                    // width: MediaQuery.of(context).size.width/,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            context.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TrackerDrinkPremiumScreen()));
                          },
                          child: Container(
                            padding: edge_insets_16,
                            decoration: BoxDecoration(
                                gradient: AppColors.premiumBGButton,
                                borderRadius: borderRadius.br_t_8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Unlock all cups with Premium",
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      fontWeight: Fonts.f700,
                                      color: AppColors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            const SizedBox(
                              width: 55,
                            ),
                            Expanded(
                                child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.bgPrimary,
                                padding: edge_insets_y_10,
                              ),
                              child: const Text(
                                'Done',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: Fonts.fontSize18,
                                  fontFamily: Fonts.fontNunito,
                                  fontWeight: Fonts.f700,
                                ),
                              ),
                              onPressed: () {
                                closeModal(
                                    context,
                                    ModalData(
                                        status: BooleanStatus.success,
                                        data: trackersSelectDrinkTypeController
                                            .cubit!.state.selectedDrinkType));
                              },
                            )),
                            const SizedBox(
                              width: 55,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackersChangeDrinkTypeModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackersChangeDrinkTypeModalContentCubit trackerEditGoalModalContentCubit =
        TrackersChangeDrinkTypeModalContentCubit();
    controller?.cubit = trackerEditGoalModalContentCubit;
    return trackerEditGoalModalContentCubit;
  }
}
