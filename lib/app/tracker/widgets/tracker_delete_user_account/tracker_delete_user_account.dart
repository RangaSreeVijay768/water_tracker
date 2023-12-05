import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_user_account/tracker_delete_user_account_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_user_account/tracker_delete_user_account_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackerDeleteUserAccount extends BaseStatelessWidget<
    TrackerDeleteUserAccountController, TrackerDeleteUserAccountCubit> {
  Function(TrackerDeleteUserAccountState)? onUserAccountDeleted;

  TrackerDeleteUserAccount({Key? key, this.onUserAccountDeleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDeleteUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDeleteUserAccountCubit,
          TrackerDeleteUserAccountState>(
        listener: (context, state) {
          if (onUserAccountDeleted != null &&
              state.status == BooleanStatus.success) {
            onUserAccountDeleted!(state);
          }
        },
        builder: (context, state) {
          return OutlinedButton(
              onPressed: () async {
                FirebaseAnalytics.instance.logEvent(name: "tracker_delete_user_account_delete_button");
                getCubit(context).deleteUserAccount(state.userAccount);
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 2, color: AppColors.textRed,),
                foregroundColor: AppColors.textRed
              ),
              child: const Text("Delete", style: TextStyle(color: AppColors.textRed, fontWeight: Fonts.f500),)
          );
        },
      ),
    );
  }

  @override
  TrackerDeleteUserAccountCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDeleteUserAccountCubit cubit =
        TrackerDeleteUserAccountCubit(getLoggedUserAccount(context)!);
    controller?.cubit = cubit;
    return cubit;
  }
}


