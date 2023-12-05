import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_water_goal_slider/onboarding_water_goal_slider_controller.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_water_goal_slider/onboarding_water_goal_slider_cubit.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class OnboardingWaterGoalSlider extends BaseStatelessWidget<
    OnboardingWaterGoalSliderController, OnboardingWaterGoalSliderCubit> {
  double goal;
  Function(double)? onGoalChanged;

  OnboardingWaterGoalSlider(
      {required this.goal, Key? key, super.controller, this.onGoalChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWaterGoalSliderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingWaterGoalSliderCubit,
          OnboardingWaterGoalSliderState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(children: [
            Text.rich(TextSpan(
                text: (state.goal / 1000).toStringAsFixed(1),
                style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: Fonts.f700,
                    fontSize: Fonts.fontSize32,
                    fontFamily: Fonts.fontNunito),
                children: const <InlineSpan>[
                  TextSpan(
                      text: " litres",
                      style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: Fonts.fontSize18,
                        fontWeight: Fonts.f400,
                      )),
                ])),
            Container(
              margin: edge_insets_t_24,
              child: Row(
                children: [
                  Expanded(
                    child: SfSliderTheme(
                        data: SfSliderThemeData(
                            activeTrackHeight: 15,
                            inactiveTrackHeight: 15,
                            thumbRadius: 16,
                            thumbColor: AppColors.bgPrimary,
                            thumbStrokeWidth: 1,
                            thumbStrokeColor: AppColors.white,
                            // activeDividerColor: AppColors.white,
                            inactiveTrackColor: AppColors.white,
                            activeTrackColor: AppColors.white),
                        child: SfSlider(
                          min: 0000.0,
                          max: 8000.0,
                          interval: 100,
                          stepSize: 100,
                          value: state.goal,
                          trackShape: _SfTrackShape(),
                          thumbIcon: Tab(
                            icon: Image.asset(
                              "images/bubble-outline.png",
                              height: 19,
                              width: 19,
                            ),
                          ),
                          onChanged: (value) {
                            getCubit(context).updateGoal(value);
                            if (onGoalChanged != null) {
                              onGoalChanged!(value);
                            }
                          },
                        )),
                  ),
                ],
              ),
            ),

          ]);
        },
      ),
    );
  }

  @override
  OnboardingWaterGoalSliderCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingWaterGoalSliderCubit cubit = OnboardingWaterGoalSliderCubit(goal);
    controller?.cubit = cubit;
    return cubit;
  }
}

class _SfTrackShape extends SfTrackShape {
  @override
  void paint(PaintingContext context, Offset offset, Offset? thumbCenter,
      Offset? startThumbCenter, Offset? endThumbCenter,
      {required RenderBox parentBox,
      required SfSliderThemeData themeData,
      required Animation<double> enableAnimation,
      required Paint? inactivePaint,
      required Paint? activePaint,
      required TextDirection textDirection,
      SfRangeValues? currentValues,
      dynamic currentValue}) {
    Paint paint = Paint()
      ..color = themeData.activeTrackColor!
      ..color = themeData.inactiveTrackColor!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    super.paint(context, offset, thumbCenter, startThumbCenter, endThumbCenter,
        parentBox: parentBox,
        themeData: themeData,
        enableAnimation: enableAnimation,
        inactivePaint: paint,
        activePaint: inactivePaint,
        textDirection: textDirection);
  }
}
