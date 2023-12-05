import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tracker_drink_set_sleep_cycle_step_screen_state.dart';

class TrackerDrinkSetSleepCycleStepScreenCubit extends Cubit<TrackerDrinkSetSleepCycleStepScreenState> {
  TrackerDrinkSetSleepCycleStepScreenCubit() : super(TrackerDrinkSetSleepCycleStepScreenInitial());
}
