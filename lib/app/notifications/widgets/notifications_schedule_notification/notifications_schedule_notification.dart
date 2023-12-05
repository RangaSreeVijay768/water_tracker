import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'notifications_schedule_notification_controller.dart';
import 'notifications_schedule_notification_cubit.dart';

class NotificationsScheduleNotification extends BaseStatelessWidget<
    NotificationsScheduleNotificationController,
    NotificationsScheduleNotificationCubit> {
  const NotificationsScheduleNotification({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationsScheduleNotificationCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<NotificationsScheduleNotificationCubit,
          NotificationsScheduleNotificationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ElevatedButton(
              onPressed: () {
                FirebaseAnalytics.instance.logEvent(name: "notifications_schedule_notification_create_notification_button");
                getCubit(context).createNotification();
              },
              child: const Text('Create Notification'));
        },
      ),
    );
  }

  @override
  NotificationsScheduleNotificationCubit createCubitAndAssignToController(
      BuildContext context) {
    NotificationsScheduleNotificationCubit cubit =
        NotificationsScheduleNotificationCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
