import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_drink_feedback_form_state.dart';

part 'tracker_drink_feedback_form_cubit.freezed.dart';

class TrackerDrinkFeedbackFormCubit
    extends BaseFormCubit<TrackerDrinkFeedbackFormState> {
  TrackerDrinkFeedbackFormCubit({required super.context})
      : super(initialState: TrackerDrinkFeedbackFormState.initial());

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'feedback': FormControl<String>(validators: [Validators.required]),
    });
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
