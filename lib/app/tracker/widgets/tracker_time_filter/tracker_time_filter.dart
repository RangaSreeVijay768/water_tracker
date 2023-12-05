import 'package:beebloom_water_tracker/app/core/models/time_filter.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_time_filter/tracker_time_filter_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_time_filter/tracker_time_filter_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';

class TrackerTimeFilter extends BaseStatelessWidget<TrackerTimeFilterController,
    TrackerTimeFilterCubit> {
  final List<TimeFilter> timeFilters;

  final Function(TimeFilter timeFilter)? timeFilterClicked;

  const TrackerTimeFilter(
      {required this.timeFilters, Key? key, this.timeFilterClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerTimeFilterCubit>(
      create: (context) => TrackerTimeFilterCubit(timeFilters),
      child: BlocConsumer<TrackerTimeFilterCubit, TrackerTimeFilterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
              margin: edge_insets_t_20,
              padding: edge_insets_b_20,
              decoration: BoxDecoration(border: borders.bb_1px_grey4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 20,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: state.timeFilters
                      .map(
                        (e) => OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: e.humanReadable == state.selectedTimeFilter.humanReadable? const BorderSide(color: Colors.blue):const BorderSide(color: Colors.grey),
                      ),
                      onPressed: () {
                        FirebaseAnalytics.instance.logEvent(name: "time_filter_button");
                        timeFilterClicked?.call(e);
                        getCubit(context).selectTimeFliter(e);
                      },
                      child: Text(
                        e.humanReadable,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: e.humanReadable == state.selectedTimeFilter.humanReadable? AppColors.textHeading : AppColors.grey1,
                          fontSize: Fonts.fontSize14,
                          fontFamily: Fonts.fontNunito,
                          fontWeight: Fonts.f400,
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ),
              ));
        },
      ),
    );
  }

  @override
  TrackerTimeFilterCubit createCubitAndAssignToController(BuildContext context) {
    TrackerTimeFilterCubit cubit = TrackerTimeFilterCubit(timeFilters);
    controller?.cubit = cubit;
    return cubit;
  }
}
