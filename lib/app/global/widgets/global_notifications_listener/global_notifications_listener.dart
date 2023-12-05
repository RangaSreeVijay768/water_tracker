import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'global_notifications_listener_controller.dart';
import 'global_notifications_listener_cubit.dart';

class GlobalNotificationsListener extends BaseStatelessWidget<
    GlobalNotificationsListenerController, GlobalNotificationsListenerCubit> {
  const GlobalNotificationsListener({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GlobalNotificationsListenerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<GlobalNotificationsListenerCubit,
          GlobalNotificationsListenerState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  GlobalNotificationsListenerCubit createCubitAndAssignToController(
      BuildContext context) {
    GlobalNotificationsListenerCubit cubit =
        GlobalNotificationsListenerCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
