import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = Color.fromRGBO(41, 66, 136, 1);
  static const Color bgPrimary = Color.fromRGBO(13, 139, 255, 1);
  static const Color bgPrimary005 = Color.fromRGBO(13, 139, 255, 0.05);
  static const Color bgPrimary2 = Color.fromRGBO(13, 110, 255, 1);
  static const Color waterPrimary = Color.fromRGBO(0, 147, 183, 1);
  static const Color skyBlue = Color.fromRGBO(231, 243, 255, 1);
  static const Color lightBlue = Color.fromRGBO(33, 0, 93, 1);

  static const Color textHeading = Color.fromRGBO(46, 46, 46, 1);
  static const Color textNormal = Color.fromRGBO(46, 46, 46, 1);
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);
  static const Color grey1 = Color.fromRGBO(120, 120, 120, 1);
  static const Color grey2 = Color.fromRGBO(234, 234, 234, 1);
  static const Color grey3 = Color.fromRGBO(247, 247, 247, 1);
  static const Color grey4 = Color.fromRGBO(177, 177, 177, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color white03 = Color.fromRGBO(255, 255, 255, 0.3);
  static const Color white04 = Color.fromRGBO(255, 255, 255, 0.4);
  static const Color white07 = Color.fromRGBO(255, 255, 255, 0.7);
  static const Color white012 = Color.fromRGBO(255, 255, 255, 0.12);
  static const Color white018 = Color.fromRGBO(255, 255, 255, 0.18);
  static const Color greyWhite = Color.fromRGBO(244, 229, 190, 1);
  static const Color bgLightGrey = Color.fromRGBO(234, 236, 243, 1);
  static const Color bgLightBlue = Color.fromRGBO(130, 160, 243, 1);
  static const Color textRed = Color.fromRGBO(224, 36, 36, 1);
  static const Color green = Color.fromRGBO(15, 184, 0, 1);
  static const Color yellow = Color.fromRGBO(253, 198, 32, 1);
  static const Color coinProgress = Color.fromRGBO(255, 204, 102, 1);
  static const Color bmiTracker = Color.fromRGBO(115, 41, 209, 1);
  static const Color brown = Color.fromRGBO(197, 142, 76, 1);
  static const Color orange = Color.fromRGBO(247, 136, 31, 1);
  static const Color premiumPink = Color.fromRGBO(255, 205, 250, 0.1);


  static const Gradient premiumNotification = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(41, 210, 223, 1),
        Color.fromRGBO(8, 110, 216, 1)
      ]
  );
  static const Gradient premium = LinearGradient(
      colors: [
        Color.fromRGBO(82, 229, 231, 1),
        Color.fromRGBO(19, 12, 183, 1)
      ]
  );
  static const Gradient premiumStreak = LinearGradient(
    begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(13, 139, 255, 0),
        Color.fromRGBO(13, 139, 255, 1)
      ]
  );

  static const Gradient premiumBG = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(255, 205, 250, 0.1),
        Color.fromRGBO(13, 139, 255, 1),
        Color.fromRGBO(4, 26, 95, 1),
      ]
  );
  static const Gradient premiumBorder = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(255, 205, 250, 1),
        Color.fromRGBO(13, 139, 255, 1),
        Color.fromRGBO(4, 26, 95, 1),
      ]
  );
  static const Gradient premiumBGButton = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color.fromRGBO(255, 205, 250, 1),
        Color.fromRGBO(13, 139, 255, 1),
        Color.fromRGBO(4, 26, 95, 1),
      ]
  );



  static ColorFilter bgFilter = ColorFilter.mode(
      Colors.white.withOpacity(0.4), BlendMode.dstATop);
}

