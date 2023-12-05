import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import 'tracker_buy_streak_modal_content_controller.dart';
import 'tracker_buy_streak_modal_content_cubit.dart';

class TrackerBuyStreakModalContent extends BaseModalContent<
    TrackerBuyStreakModalContentController,
    TrackerBuyStreakModalContentCubit,
    TrackerBuyStreakModalContentState> {
  TrackerBuyStreakModalContent({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerBuyStreakModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerBuyStreakModalContentCubit,
          TrackerBuyStreakModalContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          String item = 'qwer';
          return Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius.br_t_20,
              color: AppColors.white,
            ),
            height: MediaQuery.sizeOf(context).height / 1.3,
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "images/half_bubble_big.png",
                        width: 44,
                        height: 44,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            fontWeight: Fonts.f700, fontSize: Fonts.fontSize32),
                      )
                    ],
                  ),
                ),
                Flexible(
                    child: SingleChildScrollView(
                  padding: edge_insets_16,
                  child: Column(
                    children: [
                      Image.asset(
                        "images/half_bubble_big.png",
                        width: 200,
                        height: 200,
                      ),
                      Text(
                        "Buy Streak freeze",
                        style: TextStyle(
                            fontSize: Fonts.fontSize18, fontWeight: Fonts.f700),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Duis aute irure dolor in reprehenderit in voluptate velit esse"
                        " cillum dolore eu fugiat nulla pariatu",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: Fonts.fontSize12),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width / 2.5,
                        decoration: BoxDecoration(
                            border: borders.b_1px_bgPrimary,
                            borderRadius: borderRadius.br_30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (state.menuItemCountMap[item]! > 1) {
                                    getCubit(context)
                                        .increaseMenuItemCount(item, -1);
                                  }
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: AppColors.bgPrimary,
                                )),
                            Text(
                                (state.menuItemCountMap[item] ?? 1).toString()),
                            IconButton(
                                onPressed: () {
                                  getCubit(context)
                                      .increaseMenuItemCount(item, 1);
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: AppColors.bgPrimary,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                )),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: edge_insets_16,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: borders.bt_1px_grey2,
                      boxShadow: [shadows.bs_primary]),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "cancel",
                          style: TextStyle(
                              fontSize: Fonts.fontSize18,
                              fontWeight: Fonts.f700),
                        ),
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.bgPrimary),
                        onPressed: () {},
                        child: Text(
                          "Buy ₹10",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: Fonts.fontSize18,
                              fontWeight: Fonts.f700),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerBuyStreakModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerBuyStreakModalContentCubit cubit =
        TrackerBuyStreakModalContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
