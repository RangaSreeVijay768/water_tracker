import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../../core/database/boolean_status.dart';
import '../../../../core/models/modal_data.dart';
import '../../../../styles/edge_insets.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/borders.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../tracker_drink_premium_modal_data.dart';
import 'tracker_drink_premium_modal_content_controller.dart';
import 'tracker_drink_premium_modal_content_cubit.dart';

class TrackerDrinkPremiumModalContent extends BaseModalContent<
    TrackerDrinkPremiumModalContentController,
    TrackerDrinkPremiumModalContentCubit,
    TrackerDrinkPremiumModalData> {
  TrackerDrinkPremiumModalContent({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkPremiumModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDrinkPremiumModalContentCubit,
          TrackerDrinkPremiumModalContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.sizeOf(context).height/1.1,
            padding: edge_insets_x_16,
            decoration: BoxDecoration(
                borderRadius: borderRadius.br_10,
              gradient: AppColors.premiumBG
            ),
            child: Column(
              children: [
                Container(
                  padding: edge_insets_y_24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: (){
                            closeModal(context, ModalData(status: BooleanStatus.success));
                          },
                          icon: Icon(Icons.close)
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        // margin: edge_insets_x_16,
                        padding: edge_insets_16,
                        decoration: BoxDecoration(
                            borderRadius: borderRadius.br_10,
                            color: AppColors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Text("Try Premium for 7 days free trail",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: Fonts.f700,
                                    fontSize: Fonts.fontSize24
                                ),),
                            ),
                            Container(
                              margin: edge_insets_y_8,
                              child: Image.asset(
                                "images/premium_image.png",
                                color: AppColors.bgPrimary,
                              ),
                            ),
                            Container(
                              padding: edge_insets_y_8,
                              child: Text(
                                "Unlock all features ",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize18,
                                    fontWeight: Fonts.f700),
                              ),
                            ),
                            Container(
                              margin: edge_insets_b_24,
                              child: Text(
                                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nis",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f500),
                              ),
                            ),
                            Container(
                              padding: edge_insets_y_8,
                              child: Text(
                                "Why join premium?",
                                style: TextStyle(
                                    fontWeight: Fonts.f700,
                                    fontSize: Fonts.fontSize18),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: AppColors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Completely ads free.",
                                  style: TextStyle(
                                      fontWeight: Fonts.f500,
                                      fontSize: Fonts.fontSize14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: AppColors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Unlock all cups.",
                                  style: TextStyle(
                                      fontWeight: Fonts.f500,
                                      fontSize: Fonts.fontSize14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: AppColors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Pro widget access",
                                  style: TextStyle(
                                      fontWeight: Fonts.f500,
                                      fontSize: Fonts.fontSize14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: AppColors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Advance and detailed analytics",
                                  style: TextStyle(
                                      fontWeight: Fonts.f500,
                                      fontSize: Fonts.fontSize14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: AppColors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Extra 1 month premium free",
                                  style: TextStyle(
                                      fontWeight: Fonts.f500,
                                      fontSize: Fonts.fontSize14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: borderRadius.br_30,
                                          gradient: AppColors.premiumBGButton),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: AppColors.transparent,
                                              shadowColor: AppColors.transparent),
                                          onPressed: () {},
                                          child: const Text(
                                            "Start 7days free plan",
                                            style: TextStyle(
                                                fontSize: Fonts.fontSize14,
                                                fontWeight: Fonts.f500,
                                                color: AppColors.white),
                                          )),
                                    ))
                              ],
                            ),
                            SizedBox(height: 80,)
                          ],
                        ),
                      ),
                    )
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkPremiumModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkPremiumModalContentCubit cubit =
        TrackerDrinkPremiumModalContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
