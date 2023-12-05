import 'package:beebloom_water_tracker/app/ads/admob_ads_service.dart';
import 'package:beebloom_water_tracker/app/app.dart';
import 'package:beebloom_water_tracker/app/bloc_observer.dart';
import 'package:beebloom_water_tracker/app/core/di/injection.dart';
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart';
import 'package:beebloom_water_tracker/app/global/notifications_listener_service.dart';
import 'package:beebloom_water_tracker/app/home_widget/home_widget_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:workmanager/workmanager.dart';

/// Used for Background Updates using Workmanager Plugin
@pragma("vm:entry-point")
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) {
    final now = DateTime.now();
    return Future.wait<bool?>([
      HomeWidgetService.updateLiveWidgetData(),
    ]).then((value) {
      return !value.contains(false);
    });
  });
}

/// Called when Doing Background Work initiated from Widget
@pragma("vm:entry-point")
void backgroundCallback(Uri? data) async {
  await HomeWidgetService.updateLiveWidgetData();
}

Future<void> main(env) async {
  Bloc.observer = const AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotificationsService.initialize();
  AdmobAdsService.initialize();
  initializeDateFormatting();

  await configureDependencies();

  HomeWidgetService.initializeService();

  NotificationController.setupListeners();
  await Firebase.initializeApp();

// await GetIt.instance.allReady();
  runApp(App());
}
