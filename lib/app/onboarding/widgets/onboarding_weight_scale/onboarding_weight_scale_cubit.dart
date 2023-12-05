import 'package:bloc/bloc.dart';
import'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_weight_scale_state.dart';

part 'onboarding_weight_scale_cubit.freezed.dart';

class OnboardingWeightScaleCubit extends Cubit<OnboardingWeightScaleState> {
  OnboardingWeightScaleCubit()
      : super(const OnboardingWeightScaleState.initial());

  updateWeight(double weight) {
    emit(state.copyWith(currentWeight: weight));
  }
}
