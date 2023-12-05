import 'package:beebloom_water_tracker/app/core/authentication/authentication_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_splash_screen/onboarding_splash_screen.dart';
import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_welcome_screen/onboarding_welcome_screen.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_reminders_screen/tracker_drink_reminders_screen.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_drink_water_screen/tracker_drink_water_screen.dart';
import 'package:beebloom_water_tracker/app/tracker/screens/tracker_main_screen/tracker_main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../onboarding/widgets/onboarding_weight_goal_stepper/onboarding_weight_goal_stepper.dart';
import '../tracker/screens/tracker_drink_set_sleep_cycle_step_screen/tracker_drink_set_sleep_cycle_step_screen.dart';

final TrackerDrinkWaterScreen trackerDrinkWaterScreen =
    TrackerDrinkWaterScreen();

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return BlocListener<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            if (isOnboardingFinished(state.userAccount)) {
              context.go('/tracker');
            } else {
              context.go('/onboarding');
            }
          },
          child: const SizedBox(),
        );
      },
      // redirect: (context, state) {
      //   AuthenticationCubit authenticationCubit =
      //   BlocProvider.of<AuthenticationCubit>(context);
      //   if (isOnboardingFinished(authenticationCubit.state.userAccount)) {
      //     return '/tracker';
      //   }
      // },
      routes: <RouteBase>[
        GoRoute(
          path: 'weight',
          builder: (BuildContext context, GoRouterState state) {
            return OnboardingWeightGoalStepper();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/reminders',
      builder: (BuildContext context, GoRouterState state) {
        return TrackerDrinkRemindersScreen();
      },
    ),
    GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingSplashScreen();
      },
    ),
    GoRoute(
      path: '/reminder222',
      builder: (BuildContext context, GoRouterState state) {
        return const TrackerDrinkSetSleepCycleStepScreen();
      },
    ),
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingWelcomeScreen();
      },
    ),
    GoRoute(
      path: '/tracker',
      builder: (BuildContext context, GoRouterState state) {
        return TrackerMainScreen();
      },

    ),
  ],
);

bool isOnboardingFinished(UserAccount? userAccount) {
  if (userAccount == null) {
    return false;
  }
  if (userAccount.onboardingStatus == null ||
      userAccount.onboardingStatus != BooleanStatus.completed) {
    return false;
  }
  return true;
}
