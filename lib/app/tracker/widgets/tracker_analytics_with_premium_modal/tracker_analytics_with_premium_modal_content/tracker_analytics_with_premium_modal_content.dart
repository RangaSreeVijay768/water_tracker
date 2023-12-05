import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_premium_screen/tracker_drink_premium_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/borders.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../tracker_analytics_with_premium_modal_data.dart';
import 'tracker_analytics_with_premium_modal_content_controller.dart';
import 'tracker_analytics_with_premium_modal_content_cubit.dart';



class TrackerAnalyticsWithPremiumModalContent
    extends BaseModalContent<
        TrackerAnalyticsWithPremiumModalContentController,
        TrackerAnalyticsWithPremiumModalContentCubit,
        TrackerAnalyticsWithPremiumModalData> {

  TrackerAnalyticsWithPremiumModalContent(
      {Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAnalyticsWithPremiumModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerAnalyticsWithPremiumModalContentCubit,
          TrackerAnalyticsWithPremiumModalContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.sizeOf(context).height/1.7,
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
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
                Container(
                  margin: edge_insets_y_8,
                  child: Image.asset("images/premium_image.png", color: AppColors.bgPrimary,),
                ),
                Container(
                  margin: edge_insets_t_12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Unlock all analytics with ", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f700
                      ),),
                      GradientText("Premium",
                        gradientDirection: GradientDirection.ttb,
                        style: const TextStyle(
                            fontSize: Fonts.fontSize14,
                            fontWeight: Fonts.f700
                        ),
                        colors: const [
                          Color.fromRGBO(82, 229, 231, 1),
                          Color.fromRGBO(19, 12, 183, 1)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_32,
                  decoration: BoxDecoration(
                      borderRadius: borderRadius.br_30,
                      gradient: AppColors.premiumBGButton
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.transparent,
                          shadowColor: AppColors.transparent,
                        padding: edge_insets_x_30
                      ),
                      onPressed: (){
                        closeModal(context, ModalData(status: BooleanStatus.success));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TrackerDrinkPremiumScreen()));
                      },
                      child: const Text("Buy premium", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f700,
                          color: AppColors.white
                      ),)
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerAnalyticsWithPremiumModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAnalyticsWithPremiumModalContentCubit cubit = TrackerAnalyticsWithPremiumModalContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
