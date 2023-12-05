part of 'tracker_drink_feedback_form_cubit.dart';

@freezed
class TrackerDrinkFeedbackFormState with _$TrackerDrinkFeedbackFormState {
  const factory TrackerDrinkFeedbackFormState.initial({
    @Default(ControlStatus.pending) ControlStatus formValid,
}) = _Initial;
}
