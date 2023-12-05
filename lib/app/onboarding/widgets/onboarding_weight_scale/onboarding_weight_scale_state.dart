part of 'onboarding_weight_scale_cubit.dart';

@freezed
class OnboardingWeightScaleState with _$OnboardingWeightScaleState {
  const factory OnboardingWeightScaleState.initial(
      {@Default(55.0) double currentWeight}) = _Initial;
}
