import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/onboarding/screens/onboarding_splash_screen/onboarding_splash_screen_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_splash_screen_controller.dart';



class OnboardingSplashScreen extends BaseStatelessWidget<OnboardingSplashScreenController, OnboardingSplashScreenCubit> {
  const OnboardingSplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingSplashScreenCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingSplashScreenCubit, OnboardingSplashScreenState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            backgroundColor: AppColors.skyBlue,
            body: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset("images/main_icon.png", width: 150),
                ),
                Container(
                  margin: edge_insets_b_50,
                  alignment: Alignment.bottomCenter,
                  child: const Text("A Beebloom Product",
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: Fonts.fontNunito,
                        fontSize: Fonts.fontSize18,
                        fontWeight: Fonts.f700
                    ),)
                )
              ]
            ),
            // bottomNavigationBar: SizedBox(
            //   height: 90,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text("A Beebloom Product",
            //         style: TextStyle(
            //           color: AppColors.primary,
            //             fontFamily: Fonts.fontNunito,
            //             fontSize: Fonts.fontSize18,
            //             fontWeight: Fonts.f700
            //         ),)
            //     ],
            //   ),
            // ),

          );
        },
      ),
    );
  }

  @override
  OnboardingSplashScreenCubit createCubitAndAssignToController(BuildContext context) {
    OnboardingSplashScreenCubit cubit = OnboardingSplashScreenCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
