import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../themes/fonts.dart';
import '/app/core/modals/base_modal/base_modal_widget.dart';
import 'tracker_drink_premium_modal_content/tracker_drink_premium_modal_content.dart';
import 'tracker_drink_premium_modal_controller.dart';
import 'tracker_drink_premium_modal_cubit.dart';
import 'tracker_drink_premium_modal_data.dart';



class TrackerDrinkPremiumModal
    extends BaseModalWidget<
        TrackerDrinkPremiumModalController,
        TrackerDrinkPremiumModalCubit,
        TrackerDrinkPremiumModalData> {
  TrackerDrinkPremiumModal(
      {Key? key, super.controller, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkPremiumModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerDrinkPremiumModalCubit,
          TrackerDrinkPremiumModalState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
            onPressed: () {
              openModal(context: context, cubit: getCubit(context));
            },
            child: GradientText(
              'Get Premium',
              gradientDirection: GradientDirection.ttb,
              style: TextStyle(
                  fontSize: Fonts.fontSize14,
                  fontWeight: Fonts.f700),
              colors: [
                Color.fromRGBO(82, 229, 231, 1),
                Color.fromRGBO(19, 12, 183, 1)
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkPremiumModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkPremiumModalCubit cubit = TrackerDrinkPremiumModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerDrinkPremiumModalContent();
  }
}
