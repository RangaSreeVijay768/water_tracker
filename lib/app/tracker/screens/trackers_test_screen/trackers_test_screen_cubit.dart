import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trackers_test_screen_state.dart';
part 'trackers_test_screen_cubit.freezed.dart';

class TrackersTestScreenCubit extends Cubit<TrackersTestScreenState> {
  TrackersTestScreenCubit() : super(const TrackersTestScreenState.initial());
}
