import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/core/modals/base_modal/base_modal_widget.dart';
import 'tracker_drink_feedback_modal_content/tracker_drink_feedback_modal_content.dart';
import 'tracker_drink_feedback_modal_controller.dart';
import 'tracker_drink_feedback_modal_cubit.dart';



class TrackerDrinkFeedbackModal
    extends BaseModalWidget<
        TrackerDrinkFeedbackModalController,
        TrackerDrinkFeedbackModalCubit,
        TrackerDrinkFeedbackModalState> {
  TrackerDrinkFeedbackModal(
      {Key? key, super.controller, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkFeedbackModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerDrinkFeedbackModalCubit,
          TrackerDrinkFeedbackModalState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          initializeController(context);
          return TextButton(
              style: TextButton.styleFrom(
                  padding: edge_insets_x_24,
                  side: BorderSide(
                      color: AppColors.bgPrimary2, width: 2)),
              onPressed: () {
                openModal(context: context, cubit: getCubit(context));
              },
              child: Text(
                "Tell us",
                style: TextStyle(
                    fontWeight: Fonts.f700,
                    fontSize: Fonts.fontSize14),
              ));
        },
      ),
    );
  }

  @override
  TrackerDrinkFeedbackModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkFeedbackModalCubit cubit = TrackerDrinkFeedbackModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerDrinkFeedbackModalContent();
  }
}
