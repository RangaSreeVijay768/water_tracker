import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/tracker/models/drink_type.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_change_drink_type_modal/trackers_change_drink_type_modal_content/trackers_change_drink_type_modal_content.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_change_drink_type_modal/trackers_change_drink_type_modal_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_change_drink_type_modal/trackers_change_drink_type_modal_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';

class TrackersChangeDrinkTypeModal extends BaseModalWidget<
    TrackerChangeDrinkTypeModalController,
    TrackersChangeDrinkTypeModalCubit,
    dynamic> {
  DrinkType? drinkType;

  TrackersChangeDrinkTypeModal({Key? key, super.onModalClosed, this.drinkType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackersChangeDrinkTypeModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocBuilder<TrackersChangeDrinkTypeModalCubit,
          TrackersChangeDrinkTypeModalState>(
        builder: (context, state) {
          return TextButton(
              onPressed: () {
                openModal(context: context, cubit: getCubit(context));
              },
              style: TextButton.styleFrom(
                  padding: edge_insets_0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)
              ),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "change",
                  style: TextStyle(
                    fontWeight: Fonts.f700,
                    color: AppColors.bgPrimary,
                    fontSize: Fonts.fontSize14,
                    fontFamily: Fonts.fontNunito,
                  ),
                ),
              ));
        },
      ),
    );
  }

  @override
  TrackersChangeDrinkTypeModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackersChangeDrinkTypeModalCubit trackerEditGoalModalContentCubit =
        TrackersChangeDrinkTypeModalCubit(context: context);
    controller?.cubit = trackerEditGoalModalContentCubit;
    return trackerEditGoalModalContentCubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackersChangeDrinkTypeModalContent(
      drinkType: drinkType,
    );
  }
}
