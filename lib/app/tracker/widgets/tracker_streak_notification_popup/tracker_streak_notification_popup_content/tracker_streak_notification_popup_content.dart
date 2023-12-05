import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import 'tracker_streak_notification_popup_content_controller.dart';
import 'tracker_streak_notification_popup_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerStreakNotificationPopupContent
    extends BaseStatelessWidget<
        TrackerStreakNotificationPopupContentController,
        TrackerStreakNotificationPopupContentCubit> {

  TrackerStreakNotificationPopupContent(
      {Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerStreakNotificationPopupContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerStreakNotificationPopupContentCubit,
          TrackerStreakNotificationPopupContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return AlertDialog(
            contentPadding: edge_insets_0,
            content: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 2.5,
              padding: edge_insets_16,
              decoration: BoxDecoration(
                  color: AppColors.skyBlue,
                  borderRadius: borderRadius.br_10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: AppColors.white03),
                          onPressed: () {
                            context.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    "images/fire_half_bubble.png",
                    width: 100,
                    height: 80,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "You’re on 4-day Streak!",
                    style: TextStyle(
                      fontSize: Fonts.fontSize18,
                      fontWeight: Fonts.f700,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize12,
                        color: AppColors.grey1),
                  ),
                  SizedBox(height: 27,),
                  Container(
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.bgPrimary,
                            padding: edge_insets_y_12
                        ),
                        onPressed: () {},
                        child: Text(
                          "Let’s do it",
                          style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontWeight: Fonts.f700,
                              color: AppColors.white
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerStreakNotificationPopupContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerStreakNotificationPopupContentCubit cubit = TrackerStreakNotificationPopupContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}




