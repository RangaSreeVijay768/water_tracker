import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'tracker_morning_notification_popup_content_controller.dart';
import 'tracker_morning_notification_popup_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerMorningNotificationPopupContent extends BaseStatelessWidget<
    TrackerMorningNotificationPopupContentController,
    TrackerMorningNotificationPopupContentCubit> {
  TrackerMorningNotificationPopupContent({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerMorningNotificationPopupContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerMorningNotificationPopupContentCubit,
          TrackerMorningNotificationPopupContentState>(
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
                  gradient: AppColors.premiumNotification,
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
                            color: AppColors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    "images/full_bubble.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Hydration reminder",
                    style: TextStyle(
                        fontSize: Fonts.fontSize18,
                        fontWeight: Fonts.f700,
                        color: AppColors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Hey Rakesh! Ready to kickstart your day?\n Don't forget to drink a glass of water!",
                    style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize12,
                        color: AppColors.grey2),
                  ),
                  SizedBox(height: 27,),
                  Container(
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Let’s gp",
                          style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontWeight: Fonts.f700),
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
  TrackerMorningNotificationPopupContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerMorningNotificationPopupContentCubit cubit =
        TrackerMorningNotificationPopupContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
