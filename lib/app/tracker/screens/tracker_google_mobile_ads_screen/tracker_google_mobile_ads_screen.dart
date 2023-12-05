import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAds extends StatefulWidget {
  const GoogleAds({super.key});

  @override
  State<GoogleAds> createState() => _GoogleAdsState();
}

class _GoogleAdsState extends State<GoogleAds> {
  @override
  void initState() {
    super.initState();
    initBannerAd();
    _loadRewardedAd();
    _loadInterstitialAd();
  }

  late BannerAd bannerAd;
  bool isAdLoaded = false;

  var adUnit = "ca-app-pub-1755396171821909/7973286069"; //testing ad id

  initBannerAd() {
    bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: adUnit,
        listener: BannerAdListener(onAdLoaded: (ad) {
          setState(() {
            isAdLoaded = true;
          });
        }, onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print(error);
        }),
        request: const AdRequest());
    bannerAd.load();
  }

  late final RewardedAd rewardedAd;
  final String rewardedAdUnitId = "ca-app-pub-3940256099942544/5224354917"; //sample ad unit id

  //method to load an ad
  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        //when failed to load
        onAdFailedToLoad: (LoadAdError error) {
          print("Failed to load rewarded ad, Error: $error");
        },
        //when loaded
        onAdLoaded: (RewardedAd ad) {
          print("$ad loaded");
          // Keep a reference to the ad so you can show it later.
          rewardedAd = ad;

          //set on full screen content call back
          _setFullScreenContentCallback();
        },
      ),
    );
  }

  //method to set show content call back
  void _setFullScreenContentCallback() {
    if (rewardedAd == null) return;
    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      //when ad  shows fullscreen
      onAdShowedFullScreenContent: (RewardedAd ad) =>
          print("$ad onAdShowedFullScreenContent"),
      //when ad dismissed by user
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        print("$ad onAdDismissedFullScreenContent");

        //dispose the dismissed ad
        ad.dispose();
      },
      //when ad fails to show
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        print("$ad  onAdFailedToShowFullScreenContent: $error ");
        //dispose the failed ad
        ad.dispose();
      },

      //when impression is detected
      onAdImpression: (RewardedAd ad) => print("$ad Impression occured"),
    );
  }

  //show ad method
  void _showRewardedAd() {
    //this method take a on user earned reward call back
    rewardedAd.show(
        //user earned a reward
        onUserEarnedReward: (AdWithoutView ad, RewardItem rewardItem) {
      //reward user for watching your ad
      num amount = rewardItem.amount;
      print("You earned: $amount");
    });
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback:
          InterstitialAdLoadCallback(onAdLoaded: (InterstitialAd ad) {
        //keep a reference to the ad as you can show it later
        interstitialAd = ad;

        //set on full screen content call back
        _setFullScreenContentCallbackIn();
      }, onAdFailedToLoad: (LoadAdError loadAdError) {
        //ad failed to load
        print("Interstitial ad failed to load: $loadAdError");
      }),
    );
  }

  late final InterstitialAd interstitialAd;
  final String interstitialAdUnitId = "ca-app-pub-3940256099942544/1033173712";

  void _setFullScreenContentCallbackIn() {
    interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print("$ad onAdShowedFullScreenContent"),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print("$ad onAdDismissedFullScreenContent");

        //dispose the dismissed ad
        ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print("$ad  onAdFailedToShowFullScreenContent: $error ");
        //dispose the failed ad
        ad.dispose();
      },
      onAdImpression: (InterstitialAd ad) => print("$ad Impression occured"),
    );
  }

  //show ad method
  void _showInterstitialAd() {
    if (interstitialAd == null) {
      print("Ad not ready!");
      return;
    }
    interstitialAd.show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile ADS"),
      ),
      body: Container(
        child: Column(
          children: [
            InkWell(
              onTap: _showRewardedAd,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                height: 100,
                color: Colors.orange,
                child: const Text(
                  "Show Rewarded Ad",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
            ),
            InkWell(
              onTap: _showInterstitialAd,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                height: 100,
                color: Colors.deepPurple,
                child: const Text(
                  "Show Interstitial Ad",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: isAdLoaded
          ? SizedBox(
              height: bannerAd.size.height.toDouble(),
              width: bannerAd.size.width.toDouble(),
              child: AdWidget(ad: bannerAd),
            )
          : const SizedBox(),
    );
  }
}
