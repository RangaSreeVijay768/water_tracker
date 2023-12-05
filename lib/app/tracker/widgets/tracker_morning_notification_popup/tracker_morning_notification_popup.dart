import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_morning_notification_popup/tracker_morning_notification_popup_content/tracker_morning_notification_popup_content.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'tracker_morning_notification_popup_controller.dart';
import 'tracker_morning_notification_popup_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerMorningNotificationPopup extends BaseStatelessWidget<
    TrackerMorningNotificationPopupController,
    TrackerMorningNotificationPopupCubit> {
  TrackerMorningNotificationPopup({
    Key? key,
    super.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerMorningNotificationPopupCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerMorningNotificationPopupCubit,
          TrackerMorningNotificationPopupState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return TrackerMorningNotificationPopupContent();
                    }
                );
              },
              child: Text("morning notification")
          );
        },
      ),
    );
  }

  @override
  TrackerMorningNotificationPopupCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerMorningNotificationPopupCubit cubit =
        TrackerMorningNotificationPopupCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
