import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_splash_screen_state.dart';
part 'onboarding_splash_screen_cubit.freezed.dart';

class OnboardingSplashScreenCubit extends Cubit<OnboardingSplashScreenState> {
  OnboardingSplashScreenCubit() : super(const OnboardingSplashScreenState.initial());
}
