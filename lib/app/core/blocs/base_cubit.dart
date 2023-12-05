import 'package:beebloom_water_tracker/app/core/authentication/authentication_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  BuildContext context;

  BaseCubit({required this.context, required State initialState})
      : super(initialState);

  UserAccount getUserAccount() {
    return BlocProvider.of<AuthenticationCubit>(context).state.userAccount!;
  }

  emitState(State state) {
    emit(state);
  }

}


abstract class BaseFormCubit<State> extends BaseCubit<State> {
  late final FormGroup formGroup;

  FormGroup getFormGroup();

  void updateFormValidationState(ControlStatus event);

  void updateFormGroupState(FormGroup formGroup) {}

  void afterInitialize(FormGroup formGroup) {}

  BaseFormCubit({required super.context, required super.initialState}) {
    formGroup = getFormGroup();
    formGroup.statusChanged.listen((ControlStatus event) {
      updateFormValidationState(event);
      updateFormGroupState(formGroup);
    });
    afterInitialize(formGroup);
  }
}

