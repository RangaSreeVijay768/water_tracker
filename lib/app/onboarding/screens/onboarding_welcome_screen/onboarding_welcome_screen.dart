import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_welcome_screen/onboarding_welcome_screen_controller.dart';
import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_welcome_screen/onboarding_welcome_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingWelcomeScreen extends BaseStatelessWidget<
    OnboardingWelcomeScreenController, OnboardingWelcomeScreenCubit> {
  const OnboardingWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWelcomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingWelcomeScreenCubit,
          OnboardingWelcomeScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              // padding: edge_insets_t_170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/welcome_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              // padding: EdgeInsets.all(30.0),
              child: Container(
                  margin: edge_insets_16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlurryContainer(
                        blur: 3,
                        padding: edge_insets_0,
                        child: Container(
                          padding: edge_insets_x_16_y_24,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment.center,
                                  colors: [
                                    AppColors.bgLightBlue,
                                    AppColors.white012,
                                    AppColors.white018
                                  ]),
                              border: borders.b_1px_bgLightBlue,
                              borderRadius: borderRadius.br_20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/flower-vas.png",
                                width: 80,
                                height: 80,
                              ),
                              Container(
                                padding: edge_insets_t_24,
                                child: const Text(
                                  "Hydromate- Tracker and reminder",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: Fonts.fontSize24,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f700,
                                  ),
                                ),
                              ),
                              Container(
                                padding: edge_insets_t_8,
                                child: const Text(
                                  "Don't think so much, just tap it we are here to take care",
                                  style: TextStyle(
                                    color: AppColors.grey2,
                                    fontSize: Fonts.fontSize14,
                                    fontFamily: Fonts.fontNunito,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: edge_insets_t_56,
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  // onHover: HSLColor.fromColor(Colors.black),
                                  style: ElevatedButton.styleFrom(
                                      padding: edge_insets_x_49_y_12,
                                      backgroundColor: AppColors.white),
                                  onPressed: () {
                                    FirebaseAnalytics.instance.logEvent(name: "onboarding_welcome_screen_start_your_journey_button");
                                    context.go("/weight");
                                  },
                                  child: const Text(
                                    "Start your journey",
                                    style: TextStyle(
                                      color: AppColors.bgPrimary,
                                      fontFamily: Fonts.fontNunito,
                                      fontSize: Fonts.fontSize18,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),

            // floatingActionButton: FloatingActionButton(
            //   onPressed: _incrementCounter,
            //   tooltip: 'Increment',
            //   child: const Icon(Icons.add),
            // ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        },
      ),
    );
  }

  @override
  OnboardingWelcomeScreenCubit createCubitAndAssignToController(BuildContext context) {
    OnboardingWelcomeScreenCubit cubit = OnboardingWelcomeScreenCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
