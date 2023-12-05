import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trackers_request_user_permissions_controller.dart';
import 'trackers_request_user_permissions_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackersRequestUserPermissions extends BaseStatelessWidget<
    TrackersRequestUserPermissionsController,
    TrackersRequestUserPermissionsCubit> {
  TrackersRequestUserPermissions(
      {Key? key, super.controller, this.onPermissionsReceived})
      : super(key: key);

  Function(TrackersRequestUserPermissionsState)? onPermissionsReceived;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackersRequestUserPermissionsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackersRequestUserPermissionsCubit,
          TrackersRequestUserPermissionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.allowedPermissions?.length !=
              state.notificationPermissions.length ? ElevatedButton(
            child: const Text("request permission"), onPressed: () {
            getCubit(context).checkUserPermissions();
          },) : const SizedBox();
        },
      ),
    );
  }

  @override
  TrackersRequestUserPermissionsCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackersRequestUserPermissionsCubit cubit =
    TrackersRequestUserPermissionsCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
