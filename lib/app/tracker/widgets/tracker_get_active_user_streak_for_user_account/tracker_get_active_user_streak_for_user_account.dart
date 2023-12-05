import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/database/database.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import '../../../themes/shadows.dart';
import 'tracker_get_active_user_streak_for_user_account_controller.dart';
import 'tracker_get_active_user_streak_for_user_account_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';




class TrackerGetActiveUserStreakForUserAccount
    extends BaseStatelessWidget<
        TrackerGetActiveUserStreakForUserAccountController,
        TrackerGetActiveUserStreakForUserAccountCubit> {
  UserAccount userAccount;

  TrackerGetActiveUserStreakForUserAccount(
      {required this.userAccount, Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerGetActiveUserStreakForUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerGetActiveUserStreakForUserAccountCubit,
          TrackerGetActiveUserStreakForUserAccountState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return state.getActiveUserStreakForUserAccountResponse?.userStreak != null
          ? Container(
            padding: edge_insets_x_12_y_8,
            margin: edge_insets_x_16,
            decoration: BoxDecoration(
                borderRadius: borderRadius.br_10,
                boxShadow: [shadows.bs_grey],
                color: AppColors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.bgPrimary,
                  child: Image.asset(
                    'images/star.png',
                    width: 72,
                    height: 72,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          color: AppColors.grey1),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Your streak day no. ',style: TextStyle(
                              fontSize: Fonts.fontSize18,
                              color: AppColors.textHeading,
                              fontFamily: Fonts.fontNunito
                            ),),
                            TextSpan(
                              text: state.getActiveUserStreakForUserAccountResponse!.userStreak!.totalNumberOfDays.toString(),
                              style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize18,
                                color: AppColors.textHeading,
                                fontFamily: Fonts.fontNunito
                              )
                            )
                          ]
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          padding: edge_insets_0,
                          shape: RoundedRectangleBorder(),
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              'See more',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: Fonts.f700,
                                  fontSize: Fonts.fontSize14,
                                  color: AppColors.yellow),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: AppColors.yellow,
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          )
          : Container(child: Text("no streaks"),);
        },
      ),
    );
  }

  @override
  TrackerGetActiveUserStreakForUserAccountCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerGetActiveUserStreakForUserAccountCubit cubit = TrackerGetActiveUserStreakForUserAccountCubit(
        context: context, userAccount: userAccount);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
