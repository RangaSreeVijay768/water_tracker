import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class AppDateTimeUtils {
  static DateFormat defaultTimeForm = DateFormat.Hm();
  static DateFormat defaultTimeSerializableFormat = DateFormat("HH:mm");

  static getEndTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
  }

  static DateTime getStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  static getMonthStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, 1, 0, 0, 0);
  }


  static getMonthEndTimeOfDateTime(DateTime dateTime) {
    DateTime montStartTime = getMonthStartTimeOfDateTime(dateTime);
    DateTime nextMonthStartTime = DateTime(
        dateTime.year, montStartTime.month + 1, montStartTime.day, 0, 0, 0);
    return getEndTimeOfDateTime(DateTime(nextMonthStartTime.year,
        nextMonthStartTime.month, nextMonthStartTime.day - 1));
  }

  static getWeekStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  static getWeekEndTimeOfDateTime(DateTime dateTime) {
    DateTime weekStartTime = getWeekStartTimeOfDateTime(dateTime);
    DateTime nextWeekStartTime = DateTime(
        dateTime.year, weekStartTime.month, weekStartTime.day + 7, 0, 0, 0);
    return getEndTimeOfDateTime(DateTime(nextWeekStartTime.year,
        nextWeekStartTime.month, nextWeekStartTime.day - 1));
  }


  static subtract(DateTime dateTime, Duration duration) {
    return dateTime.subtract(duration);
  }

  static add(DateTime dateTime, Duration duration) {
    return dateTime.add(duration);
  }

  static String formatDateTime(DateTime dateTime, DateFormat dateFormat) {
    return dateFormat.format(dateTime);
  }

  static String formatDateToSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("yyyy-MM-ddTHH:mm:ss"));
  }

  static String formatDateTimeToTimeSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("HH:mm:ss"));
  }

  static DateTime parseTimeStringToDateTime(String timeString) {
    return defaultTimeSerializableFormat.parse(timeString);
  }

  static formatTimeOfDay(
      {required TimeOfDay timeOfDay, DateFormat? dateFormat}) {
    return formatDateTime(
        getDateTimeFromTimeOfDay(timeOfDay), dateFormat ?? defaultTimeForm);
  }

  static getDateTimeFromTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    return DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  }

  static getTimeOfDayFromDateTime(DateTime dateTime) {
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }

  static double convertTimeOfDayToDouble(TimeOfDay timeOfDay) {
    return timeOfDay.hour + timeOfDay.minute / 60.0;
  }

  static compareTimeOfDay(TimeOfDay a, TimeOfDay b) {
    return convertTimeOfDayToDouble(a) - convertTimeOfDayToDouble(b);
  }

  static DateTime getCurrentTimeOfDay() {
    return DateTime.now();
  }

  static String getCurrentMonthName() {
    List months =
    ['January', 'February', 'March', 'April', 'May','June','July','August','September','October','November','December'];
    return months[getCurrentTimeOfDay().month - 1];
  }
}
