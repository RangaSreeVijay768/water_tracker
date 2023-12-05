// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beebloom_water_tracker/app/core/database/database.dart' as _i3;
import 'package:beebloom_water_tracker/app/core/network/beebloom/beebloom_client.dart'
    as _i5;
import 'package:beebloom_water_tracker/app/core/network/dio_client.dart' as _i7;
import 'package:beebloom_water_tracker/app/core/network/rest_client.dart'
    as _i6;
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart'
    as _i4;
import 'package:beebloom_water_tracker/app/core/services/vibrations_service.dart'
    as _i20;
import 'package:beebloom_water_tracker/app/daos/plan_routines_dao.dart' as _i11;
import 'package:beebloom_water_tracker/app/daos/task_activity_goal_dao.dart'
    as _i13;
import 'package:beebloom_water_tracker/app/daos/task_activity_record_dao.dart'
    as _i14;
import 'package:beebloom_water_tracker/app/daos/user_account_dao.dart' as _i15;
import 'package:beebloom_water_tracker/app/daos/user_streak_items_dao.dart'
    as _i17;
import 'package:beebloom_water_tracker/app/daos/user_streaks_dao.dart' as _i18;
import 'package:beebloom_water_tracker/app/daos/user_task_activity_goals_dao.dart'
    as _i19;
import 'package:beebloom_water_tracker/app/environment/env_config.dart' as _i8;
import 'package:beebloom_water_tracker/app/global/notifications_listener_service.dart'
    as _i10;
import 'package:beebloom_water_tracker/app/home_widget/home_widget_service.dart'
    as _i9;
import 'package:beebloom_water_tracker/app/notifications/services/notifications_listeners_service.dart'
    as _i24;
import 'package:beebloom_water_tracker/app/services/plan_routines_service.dart'
    as _i12;
import 'package:beebloom_water_tracker/app/services/streaks_service.dart'
    as _i21;
import 'package:beebloom_water_tracker/app/services/task_activities_service.dart'
    as _i22;
import 'package:beebloom_water_tracker/app/services/user_accounts_service.dart'
    as _i16;
import 'package:beebloom_water_tracker/app/tracker/services/user_streaks_client.dart'
    as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
    gh.singleton<_i4.AwesomeNotificationsService>(
        _i4.AwesomeNotificationsService());
    gh.singleton<_i5.BeebloomClient>(_i5.BeebloomClient());
    gh.singleton<_i6.BeebloomService>(_i6.BeebloomService());
    gh.singleton<_i7.DioClient>(_i7.DioClient());
    await gh.singletonAsync<_i8.EnvConfig>(
      () => _i8.EnvConfig.forEnvironment(),
      preResolve: true,
    );
    gh.singleton<_i9.HomeWidgetService>(_i9.HomeWidgetService());
    gh.singleton<_i10.NotificationController>(_i10.NotificationController());
    gh.singleton<_i11.PlanRoutinesDao>(
        _i11.PlanRoutinesDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i12.PlanRoutinesService>(
        _i12.PlanRoutinesService(planRoutinesDao: gh<_i11.PlanRoutinesDao>()));
    gh.singleton<_i13.TaskActivityGoalsDao>(
        _i13.TaskActivityGoalsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i14.TaskActivityRecordsDao>(
        _i14.TaskActivityRecordsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i15.UserAccountsDao>(
        _i15.UserAccountsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i16.UserAccountsService>(_i16.UserAccountsService());
    gh.singleton<_i17.UserStreakItemsDao>(
        _i17.UserStreakItemsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i18.UserStreaksDao>(
        _i18.UserStreaksDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i19.UserTaskActivityGoalsDao>(
        _i19.UserTaskActivityGoalsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i20.VibrationsService>(_i20.VibrationsService());
    gh.singleton<_i21.StreaksService>(_i21.StreaksService(
      gh<_i17.UserStreakItemsDao>(),
      gh<_i18.UserStreaksDao>(),
    ));
    gh.singleton<_i22.TaskActivitiesService>(_i22.TaskActivitiesService(
      taskActivityRecordsDao: gh<_i14.TaskActivityRecordsDao>(),
      taskActivityGoalsDao: gh<_i13.TaskActivityGoalsDao>(),
      userTaskActivityGoalsDao: gh<_i19.UserTaskActivityGoalsDao>(),
    ));
    gh.singleton<_i23.UserStreaksClient>(_i23.UserStreaksClient(
      gh<_i21.StreaksService>(),
      gh<_i16.UserAccountsService>(),
    ));
    gh.singleton<_i24.NotificationListenerService>(
        _i24.NotificationListenerService(
            taskActivitiesService: gh<_i22.TaskActivitiesService>()));
    return this;
  }
}
