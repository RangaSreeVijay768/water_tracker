import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '/app/core/modals/base_modal/base_modal_widget.dart';
import 'tracker_analytics_with_premium_modal_content/tracker_analytics_with_premium_modal_content.dart';
import 'tracker_analytics_with_premium_modal_controller.dart';
import 'tracker_analytics_with_premium_modal_cubit.dart';
import 'tracker_analytics_with_premium_modal_data.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerAnalyticsWithPremiumModal
    extends BaseModalWidget<
        TrackerAnalyticsWithPremiumModalController,
        TrackerAnalyticsWithPremiumModalCubit,
        TrackerAnalyticsWithPremiumModalData> {
  TrackerAnalyticsWithPremiumModal(
      {Key? key, super.controller, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAnalyticsWithPremiumModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerAnalyticsWithPremiumModalCubit,
          TrackerAnalyticsWithPremiumModalState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppColors.grey2
              ),
              onPressed: (){
                openModal(context: context, cubit: getCubit(context));
              },
              icon: Icon(Icons.lock_outline, color: AppColors.grey1,)
          );
        },
      ),
    );
  }

  @override
  TrackerAnalyticsWithPremiumModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAnalyticsWithPremiumModalCubit cubit = TrackerAnalyticsWithPremiumModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerAnalyticsWithPremiumModalContent();
  }
}
