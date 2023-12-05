import 'package:flutter/material.dart';
import '../styles/edge_insets.dart';
import 'app_colors.dart';
import 'fonts.dart';
import 'borders.dart';


abstract class TimeData{
  static TimePickerThemeData timePickerThemeData = TimePickerThemeData(
    backgroundColor: AppColors.white,
    hourMinuteShape: RoundedRectangleBorder(
      borderRadius: borderRadius.br_10,
    ),
    // dayPeriodBorderSide: const BorderSide(color: AppColors.bgPrimary, width: 4),
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius.br_30,
    ),
    // dayPeriodShape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(8)),
    //   side: BorderSide(color: AppColors.bgPrimary, width: 4),
    // ),
    hourMinuteColor: MaterialStateColor.resolveWith((states) =>
    states.contains(MaterialState.selected) ? AppColors.skyBlue : AppColors.grey2),
    hourMinuteTextColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.selected) ? AppColors.lightBlue : AppColors.textHeading),
    dialHandColor: AppColors.bgPrimary,
    dialBackgroundColor: AppColors.grey2,
    hourMinuteTextStyle: const TextStyle(fontSize: Fonts.fontSize32, fontWeight: Fonts.f700),
    dayPeriodTextStyle: const TextStyle(fontSize: Fonts.fontSize32, fontWeight: Fonts.f700),
    helpTextStyle: const TextStyle(fontSize: Fonts.fontSize12, fontWeight: Fonts.f500, color: AppColors.textHeading),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      contentPadding: edge_insets_0,
      counterStyle: TextStyle(
        color: AppColors.textHeading
      )
    ),
    dialTextColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.selected) ? AppColors.white : AppColors.textHeading),
    entryModeIconColor: AppColors.textHeading,
  );
}
