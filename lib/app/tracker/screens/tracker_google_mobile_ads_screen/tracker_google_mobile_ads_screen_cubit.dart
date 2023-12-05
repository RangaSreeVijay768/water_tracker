import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tracker_google_mobile_ads_screen_state.dart';

class TrackerGoogleMobileAdsScreenCubit extends Cubit<TrackerGoogleMobileAdsScreenState> {
  TrackerGoogleMobileAdsScreenCubit() : super(TrackerGoogleMobileAdsScreenInitial());
}
