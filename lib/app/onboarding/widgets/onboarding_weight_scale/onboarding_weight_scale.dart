import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_weight_scale/onboarding_weight_scale_controller.dart';
import 'package:beebloom_water_tracker/app/onboarding/widgets/onboarding_weight_scale/onboarding_weight_scale_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';

class OnboardingWeightScale extends BaseStatelessWidget<
    OnboardingWeightScaleController, OnboardingWeightScaleCubit> {
  OnboardingWeightScale({super.key, super.controller, this.onWeightChanged});

  Function(double)? onWeightChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWeightScaleCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child:
          BlocConsumer<OnboardingWeightScaleCubit, OnboardingWeightScaleState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            children: [
              Text.rich(TextSpan(
                  text: state.currentWeight.toStringAsFixed(1),
                  style: const TextStyle(
                      color: AppColors.white,
                      fontWeight: Fonts.f700,
                      fontSize: Fonts.fontSize48,
                      fontFamily: Fonts.fontNunito),
                  children: const <InlineSpan>[
                    TextSpan(
                        text: " kgs",
                        style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f400,
                        )),
                  ])),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: edge_insets_t_24,
                        width: 800,
                        child: SfLinearGauge(
                            isAxisInversed: false,
                            minimum: 30,
                            maximum: 120,
                            orientation: LinearGaugeOrientation.horizontal,
                            markerPointers: [
                              LinearShapePointer(
                                value: state.currentWeight,
                                color: AppColors.white,
                                position: LinearElementPosition.inside,
                                shapeType: LinearShapePointerType.triangle,
                                height: 28,
                                width: 28,
                                enableAnimation: true,
                                animationType: LinearAnimationType.bounceOut,
                                onChanged: (value) {
                                  getCubit(context).updateWeight(value);
                                  if (onWeightChanged != null) {
                                    onWeightChanged!(value);
                                  }
                                },
                              )
                            ],
                            majorTickStyle: const LinearTickStyle(
                                length: 60,
                                thickness: 3,
                                color: AppColors.white),
                            minorTickStyle: const LinearTickStyle(
                                length: 20,
                                thickness: 1,
                                color: AppColors.grey2),
                            tickPosition: LinearElementPosition.outside,
                            labelPosition: LinearLabelPosition.outside,
                            minorTicksPerInterval: 5,
                            axisLabelStyle: const TextStyle(fontSize: Fonts.fontSize14, color: AppColors.white, fontWeight: Fonts.f700),
                            axisTrackStyle: const LinearAxisTrackStyle(
                              color: AppColors.transparent,
                              edgeStyle: LinearEdgeStyle.bothFlat,
                              thickness: 5,
                            )),
                      ),
                    ],
                  )),
            ],
          );
        },
      ),
    );
  }

  @override
  OnboardingWeightScaleCubit createCubitAndAssignToController(BuildContext context) {
    OnboardingWeightScaleCubit cubit = OnboardingWeightScaleCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
