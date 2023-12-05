import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_request_user_permissions/trackers_request_user_permissions_cubit.dart';
import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/page_status.dart';

part 'tracker_drink_reminders_screen_state.dart';
part 'tracker_drink_reminders_screen_cubit.freezed.dart';

class TrackerDrinkRemindersScreenCubit extends Cubit<TrackerDrinkRemindersScreenState> {
  TrackerDrinkRemindersScreenCubit() : super(const TrackerDrinkRemindersScreenState.initial());
}
