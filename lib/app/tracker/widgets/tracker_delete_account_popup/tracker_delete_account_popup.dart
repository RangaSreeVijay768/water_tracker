import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_account_popup/tracker_delete_account_popup_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_delete_account_popup/tracker_delete_account_popup_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/authentication/authentication_cubit.dart';
import '../../../styles/edge_insets.dart';
import '../tracker_delete_user_account/tracker_delete_user_account.dart';

class TrackerDeleteAccountPopup extends BaseStatelessWidget<
    TrackerDeleteAccountPopupController, TrackerDeleteAccountPopupCubit> {
  const TrackerDeleteAccountPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDeleteAccountPopupCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerDeleteAccountPopupCubit,
          TrackerDeleteAccountPopupState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SizedBox(
              width: 200,
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: edge_insets_0, shape: const RoundedRectangleBorder()),
                onPressed: () {
                  FirebaseAnalytics.instance.logEvent(name: "tracker_delete_account_popup_are_you_sure_you_want_to_delete_button");
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Are you sure you to want to delete ?'),
                      insetPadding: edge_insets_24,
                      actions: <Widget>[
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(width: 2, color: AppColors.bgPrimary)),
                              onPressed: (){
                                FirebaseAnalytics.instance.logEvent(name: "tracker_delete_account_popup_cancel_button");
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel',
                                style: TextStyle(
                                  fontWeight: Fonts.f500
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(child: TrackerDeleteUserAccount(
                              onUserAccountDeleted: (state) async {
                                AuthenticationCubit authenticationCubit =
                                    BlocProvider.of<AuthenticationCubit>(
                                        context);
                                await authenticationCubit.resetUserAccount();
                                context.go('/');
                              },
                            ))
                          ],
                        )
                      ],
                    ),
                  );
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Delete account',
                    style: TextStyle(color: AppColors.textHeading),
                  ),
                ),
              ));
        },
      ),
    );
  }

  @override
  TrackerDeleteAccountPopupCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDeleteAccountPopupCubit trackerDeleteAccountPopupCubit =
        TrackerDeleteAccountPopupCubit();
    controller?.cubit = trackerDeleteAccountPopupCubit;
    return trackerDeleteAccountPopupCubit;
  }
}
