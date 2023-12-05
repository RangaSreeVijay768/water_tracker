import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:beebloom_water_tracker/app/ads/widgets/ads_native_ad/ads_native_ad.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_get_user_streak_items_by_user_account_between/tracker_get_user_streak_items_by_user_account_between.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../core/authentication/authentication_cubit.dart';
import '../../services/date_time_utils.dart';




/// Main example page
class AccordionApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AuthenticationCubit authenticationCubit =
    BlocProvider.of<AuthenticationCubit>(context);
    return Accordion(
      headerBorderColor: Colors.blueGrey,
      headerBorderColorOpened: Colors.transparent,
      // headerBorderWidth: 1,
      headerBackgroundColorOpened: Colors.green,
      contentBackgroundColor: Colors.white,
      contentBorderColor: Colors.green,
      contentBorderWidth: 3,
      contentHorizontalPadding: 20,
      scaleWhenAnimating: true,
      openAndCloseAnimation: true,
      headerPadding: edge_insets_0,
      sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
      sectionClosingHapticFeedback: SectionHapticFeedback.light,
      children: [
        AccordionSection(
          isOpen: false,
          rightIcon: SizedBox(),
          headerBackgroundColor: Colors.transparent,
          headerBackgroundColorOpened: Colors.amber,
          headerBorderColor: Colors.black54,
          headerBorderColorOpened: Colors.black54,
          headerBorderWidth: 1,
          contentBackgroundColor: Colors.amber,
          contentBorderColor: Colors.black54,
          contentBorderWidth: 1,
          contentVerticalPadding: 30,
          header: TrackerGetUserStreakItemsByUserAccountBetween(
              userAccount: authenticationCubit.state.userAccount!,
              startTime: AppDateTimeUtils.getWeekStartTimeOfDateTime(
                  AppDateTimeUtils.getCurrentTimeOfDay()),
              endTime: AppDateTimeUtils.getWeekEndTimeOfDateTime(
                  AppDateTimeUtils.getCurrentTimeOfDay())),
          content: AdsNativeAd(templateType: TemplateType.small,),
        ),
      ],
    );
  }

}

