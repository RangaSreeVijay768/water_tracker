import 'dart:io' show Platform;

import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/environment/env_config.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ads_native_ad_cubit.freezed.dart';
part 'ads_native_ad_state.dart';

class AdsNativeAdCubit extends BaseCubit<AdsNativeAdState> {
  AdsNativeAdCubit({required super.context, required TemplateType templateType})
      : super(
            initialState: AdsNativeAdState.initial(
                templateType: templateType,
                loadingStatus: ApiStateStatus.initial)) {
    initializeAdConfigAndLoadAd();
    // loadNativeAd();
  }

  initializeAdConfigAndLoadAd() async {
    EnvConfig envConfig = GetIt.instance<EnvConfig>();
    String adUnitId = Platform.isAndroid
        ? envConfig.appEnvironment.adUnits!.nativeAd!.android!
        : envConfig.appEnvironment.adUnits!.nativeAd!.ios!;
    emit(state.copyWith(adUnitId: adUnitId));
    await loadNativeAd();
  }

  setAdShow(bool show) {
    emit(state.copyWith(showAd: show));
  }

  loadNativeAd() {
    NativeAd nativeAd = NativeAd(
        adUnitId: state.adUnitId!,
        listener: NativeAdListener(
          onAdLoaded: (ad) {
            emit(state.copyWith(loadingStatus: ApiStateStatus.loaded));
          },
          onAdFailedToLoad: (ad, error) {
            // Dispose the ad here to free resources.
            logger.d('$NativeAd failed to load: $error');
            ad.dispose();
          },
        ),
        request: const AdRequest(),
        // Styling
        nativeTemplateStyle: NativeTemplateStyle(
            // Required: Choose a template.
            templateType: state.templateType,
            // Optional: Customize the ad's style.
            mainBackgroundColor: Colors.purple,
            cornerRadius: 50.0,
            callToActionTextStyle: NativeTemplateTextStyle(
                textColor: Colors.cyan,
                backgroundColor: Colors.red,
                style: NativeTemplateFontStyle.monospace,
                size: 16.0),
            primaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.red,
                backgroundColor: Colors.cyan,
                style: NativeTemplateFontStyle.italic,
                size: 16.0),
            secondaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.green,
                backgroundColor: Colors.black,
                style: NativeTemplateFontStyle.bold,
                size: 16.0),
            tertiaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.brown,
                backgroundColor: Colors.amber,
                style: NativeTemplateFontStyle.normal,
                size: 16.0)))
      ..load();
    emit(state.copyWith(
        nativeAd: nativeAd, loadingStatus: ApiStateStatus.loading));
  }
}
