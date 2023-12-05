import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_analytics_with_premium_modal_content_state.dart';

part 'tracker_analytics_with_premium_modal_content_cubit.freezed.dart';

class TrackerAnalyticsWithPremiumModalContentCubit
    extends BaseCubit<TrackerAnalyticsWithPremiumModalContentState> {
  TrackerAnalyticsWithPremiumModalContentCubit({required super.context})
      : super(
      initialState: TrackerAnalyticsWithPremiumModalContentState.initial());
}
