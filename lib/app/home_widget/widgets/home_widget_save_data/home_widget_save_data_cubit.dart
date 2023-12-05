import 'dart:math';

import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/home_widget/home_widget_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'home_widget_save_data_cubit.freezed.dart';

part 'home_widget_save_data_state.dart';

class HomeWidgetSaveDataCubit extends BaseCubit<HomeWidgetSaveDataState> {
  late HomeWidgetService homeWidgetService;

  HomeWidgetSaveDataCubit({required super.context})
      : super(initialState: HomeWidgetSaveDataState.initial()) {
    this.homeWidgetService = GetIt.instance<HomeWidgetService>();
  }

  Future<bool?> saveWidgetData(int count) async {
    bool? updated = await HomeWidgetService.saveWidgetData(
        'todaysGoal', Random.secure().nextInt(1000).toString() + "l");
    logger.e(updated);
    bool? widgetUpdated = await HomeWidgetService.updateWidget();
    logger.e(widgetUpdated);
    String? amount =
        await this.homeWidgetService.getWidgetData('todaysGoal', "1l");
    logger.e(amount);
  }
}
