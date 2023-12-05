import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '/app/core/modals/base_modal/base_modal_widget.dart';
import 'tracker_buy_streak_modal_content/tracker_buy_streak_modal_content.dart';
import 'tracker_buy_streak_modal_controller.dart';
import 'tracker_buy_streak_modal_cubit.dart';



class TrackerBuyStreakModal
    extends BaseModalWidget<TrackerBuyStreakModalController,
        TrackerBuyStreakModalCubit,
        TrackerBuyStreakModalState> {
  TrackerBuyStreakModal(
      {Key? key, super.controller, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerBuyStreakModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerBuyStreakModalCubit,
          TrackerBuyStreakModalState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            child: Row(
              children: [
                Expanded(child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: AppColors.bgPrimary,
                        padding: edge_insets_x_80_y_12
                    ),
                    onPressed: (){
                      openModal(context: context, cubit: getCubit(context));
                    },
                    child: Text("Buy", style: TextStyle(
                        color: AppColors.white
                    ),)
                ))
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerBuyStreakModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerBuyStreakModalCubit cubit = TrackerBuyStreakModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerBuyStreakModalContent();
  }
}
