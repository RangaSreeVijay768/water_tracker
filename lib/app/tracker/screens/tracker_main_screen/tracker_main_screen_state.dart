part of 'tracker_main_screen_cubit.dart';

@freezed
class TrackerMainScreenState with _$TrackerMainScreenState {
  const factory TrackerMainScreenState.initial({
    @Default("TRACKER") String selectedWidgetName,
}) = _Initial;
}
