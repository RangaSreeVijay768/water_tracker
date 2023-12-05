import 'dart:io' show Platform;

import 'package:beebloom_water_tracker/app/environment/env_config.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ads_banner_ad_widget_cubit.freezed.dart';
part 'ads_banner_ad_widget_state.dart';

class AdsBannerAdWidgetCubit extends Cubit<AdsBannerAdWidgetState> {
  AdsBannerAdWidgetCubit()
      : super(AdsBannerAdWidgetState.initial(
            size: AdSize.banner, loadingStatus: ApiStateStatus.initial)) {
    initializeAdConfigAndLoad();
  }

  initializeAdConfigAndLoad() async {
    EnvConfig envConfig = GetIt.instance<EnvConfig>();
    String adUnitId = Platform.isAndroid
        ? envConfig.appEnvironment.adUnits!.bannerAd!.android!
        : envConfig.appEnvironment.adUnits!.bannerAd!.ios!;
    emit(state.copyWith(adUnitId: adUnitId));
    await loadBannerAd();
  }

  loadBannerAd() async {
    BannerAd bannerAd = BannerAd(
        size: state.size,
        adUnitId: state.adUnitId!,
        listener: BannerAdListener(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            emit(state.copyWith(loadingStatus: ApiStateStatus.loaded));
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (ad, err) {
            // debugPrint('BannerAd failed to load: $error');
            // Dispose the ad here to free resources.
            emit(state.copyWith(loadingStatus: ApiStateStatus.error));
            ad.dispose();
          },
        ),
        request: const AdRequest())
      ..load();
    emit(state.copyWith(bannerAd: bannerAd));
  }
}
