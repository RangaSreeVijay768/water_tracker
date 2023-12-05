import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:flutter/material.dart';

import '/app/themes/app_colors.dart';

abstract class Themes {
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
      // fontFamily: Fonts.fontNunito,
    scaffoldBackgroundColor: AppColors.white,
      colorScheme: const ColorScheme.light(
        primary: AppColors.bgPrimary,
      ),
      textTheme: Typography().black.apply(fontFamily: Fonts.fontNunito));
}
