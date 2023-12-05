import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../styles/edge_insets.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import 'ads_native_ad_controller.dart';
import 'ads_native_ad_cubit.dart';

class AdsNativeAd
    extends BaseStatelessWidget<AdsNativeAdController, AdsNativeAdCubit> {
  TemplateType templateType;

  AdsNativeAd({required this.templateType, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdsNativeAdCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<AdsNativeAdCubit, AdsNativeAdState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          const double adAspectRatioMedium = (325 / 355);

          return (state.loadingStatus== ApiStateStatus.loaded && state.showAd)
              ? SizedBox(
              height: MediaQuery.of(context).size.width *
                  adAspectRatioMedium,
              width: MediaQuery.of(context).size.width,
              child: AdWidget(ad: state.nativeAd!))
              : const SizedBox();
        },
      ),
    );
  }

  @override
  AdsNativeAdCubit createCubitAndAssignToController(BuildContext context) {
    AdsNativeAdCubit cubit =
        AdsNativeAdCubit(context: context, templateType: templateType);
    controller?.cubit = cubit;
    return cubit;
  }
}
