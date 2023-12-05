import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/page_status.dart';
import '../../../services/date_time_utils.dart';
import '../tracker_main_screen/tracker_main_screen_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_drink_home_screen_state.dart';

part 'tracker_drink_home_screen_cubit.freezed.dart';

class TrackerDrinkHomeScreenCubit
    extends BaseCubit<TrackerDrinkHomeScreenState> {
  TrackerDrinkHomeScreenCubit({required super.context})
      : super(initialState: TrackerDrinkHomeScreenState.initial(
    pageStatus: PageStatus.initial
  )){
    initializeHomeScreen();
  }

  initializeHomeScreen() async{
    DateTime currentTime = DateTime.now();
    DateTime dayStartTime = AppDateTimeUtils.getStartTimeOfDateTime(currentTime);
    DateTime dayEndTime = AppDateTimeUtils.getEndTimeOfDateTime(currentTime);


    emit(TrackerDrinkHomeScreenState.initial(
      pageStatus: PageStatus.loaded,
      todaysStartTime: dayStartTime,
      todaysEndTime: dayEndTime,
    ));

  }


}
