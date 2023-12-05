import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_streak_notification_popup/tracker_streak_notification_popup_content/tracker_streak_notification_popup_content.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'tracker_streak_notification_popup_controller.dart';
import 'tracker_streak_notification_popup_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerStreakNotificationPopup
    extends BaseStatelessWidget<
        TrackerStreakNotificationPopupController,
        TrackerStreakNotificationPopupCubit> {

  TrackerStreakNotificationPopup(
      {Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerStreakNotificationPopupCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerStreakNotificationPopupCubit,
          TrackerStreakNotificationPopupState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return TrackerStreakNotificationPopupContent();
                    }
                );
              },
              child: Text("Streak notification")
          );
        },
      ),
    );
  }

  @override
  TrackerStreakNotificationPopupCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerStreakNotificationPopupCubit cubit = TrackerStreakNotificationPopupCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
