import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_notification_toggle_btn_widget/tracker_notification_toggle_btn_widget_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_notification_toggle_btn_widget/tracker_notification_toggle_btn_widget_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerNotificationToggleBtnWidget extends BaseStatelessWidget<TrackerNotificationToggleBtnWidgetController, TrackerNotificationToggleBtnWidgetCubit>{
  const TrackerNotificationToggleBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerNotificationToggleBtnWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerNotificationToggleBtnWidgetCubit, TrackerNotificationToggleBtnWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Container();
        },
      ),
    );
  }

  @override
  TrackerNotificationToggleBtnWidgetCubit createCubitAndAssignToController(BuildContext context) {
    TrackerNotificationToggleBtnWidgetCubit trackerNotificationToggleBtnWidgetCubit =
        TrackerNotificationToggleBtnWidgetCubit();
    controller?.cubit = trackerNotificationToggleBtnWidgetCubit;
    return trackerNotificationToggleBtnWidgetCubit;
  }

}