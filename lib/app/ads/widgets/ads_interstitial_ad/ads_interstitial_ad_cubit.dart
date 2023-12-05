import 'dart:io';

import 'package:beebloom_water_tracker/app/environment/env_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '/app/core/blocs/base_cubit.dart';
import '../../../tracker/widgets/tracker_task_activity_records_aggregate_sum_by_drink_type/tracker_task_activity_records_aggregate_sum_by_drink_type_state.dart';

part 'ads_interstitial_ad_cubit.freezed.dart';
part 'ads_interstitial_ad_state.dart';

class AdsInterstitialAdCubit extends BaseCubit<AdsInterstitialAdState> {
  AdsInterstitialAdCubit({required super.context})
      : super(
            initialState: AdsInterstitialAdState.initial(
                adUnitId: Platform.isAndroid
                    ? EnvConfig.getAppEnvironment().adUnits!.appOpenAd!.android!
                    : EnvConfig.getAppEnvironment().adUnits!.appOpenAd!.ios!,
                loadingStatus: ApiStateStatus.initial)) {
    loadInterstitialAd();
  }

  void setFullScreenContentCallbackIn() {
    state.interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) {},
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print("$ad onAdDismissedFullScreenContent");

        //dispose the dismissed ad
        ad.dispose();
        //Load for next showing
        loadInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print("$ad  onAdFailedToShowFullScreenContent: $error ");
        //dispose the failed ad
        ad.dispose();
        //Load for next showing
        loadInterstitialAd();
      },
      onAdImpression: (InterstitialAd ad) => print("$ad Impression occured"),
    );
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: state.adUnitId!,
      request: const AdRequest(),
      adLoadCallback:
          InterstitialAdLoadCallback(onAdLoaded: (InterstitialAd ad) {
        //keep a reference to the ad as you can show it later
        emit(state.copyWith(
            loadingStatus: ApiStateStatus.loaded, interstitialAd: ad));
        //set on full screen content call back
        setFullScreenContentCallbackIn();
      }, onAdFailedToLoad: (LoadAdError loadAdError) {
        emit(state.copyWith(loadingStatus: ApiStateStatus.error));
        //ad failed to load
        print("Interstitial ad failed to load: $loadAdError");
      }),
    );
    // emit(state.copyWith(interstitialAd: interstitialAd));
  }

  void showInterstitialAd() {
    if (state.interstitialAd == null) {
      print("Ad not ready!");
      return;
    } else {
      state.interstitialAd!.show();
    }
  }
}
