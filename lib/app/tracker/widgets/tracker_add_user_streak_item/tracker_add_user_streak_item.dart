import 'package:beebloom_water_tracker/app/services/date_time_utils.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/database/database.dart';
import 'tracker_add_user_streak_item_controller.dart';
import 'tracker_add_user_streak_item_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerAddUserStreakItem
    extends BaseStatelessWidget<
        TrackerAddUserStreakItemController,
        TrackerAddUserStreakItemCubit> {
  UserAccount userAccount;
  DateTime currentTime = AppDateTimeUtils.getCurrentTimeOfDay();
  TrackerAddUserStreakItem({required this.userAccount, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerAddUserStreakItemCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerAddUserStreakItemCubit,
          TrackerAddUserStreakItemState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  TrackerAddUserStreakItemCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerAddUserStreakItemCubit cubit = TrackerAddUserStreakItemCubit(
        context: context, userAccount: userAccount, dateTime: currentTime);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
