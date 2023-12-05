import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/notifications/widgets/notifications_received_notifications/notifications_received_notifications_controller.dart';
import 'package:beebloom_water_tracker/app/notifications/widgets/notifications_received_notifications/notifications_received_notifications_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsReceivedNotifications extends BaseStatelessWidget<NotificationsReceivedNotificationsController, NotificationsReceivedNotificationsCubit> {
  const NotificationsReceivedNotifications({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocProvider<NotificationsReceivedNotificationsCubit>(
     create: (context) => createCubitAndAssignToController(context),
     child: BlocConsumer<NotificationsReceivedNotificationsCubit, NotificationsReceivedNotificationsState>(
       listener: (context, state) {
           if(state.status == BooleanStatus.active){
             logger.d(state.action);
           }
         },
       builder: (context, state) {
         return const SizedBox();
       }
     ),
   );
  }

  @override
  NotificationsReceivedNotificationsCubit createCubitAndAssignToController(BuildContext context) {
    throw UnimplementedError();
  }
}
