import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:beebloom_water_tracker/app/core/authentication/authentication_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/global/notifications_listener_service.dart';
import 'package:beebloom_water_tracker/app/notifications/widgets/notifications_received_notifications/notifications_received_notifications_cubit.dart';
import 'package:beebloom_water_tracker/app/routes/routes.dart';
import 'package:beebloom_water_tracker/app/themes/themes.dart';
import 'package:beebloom_water_tracker/app/environment/env_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class App extends StatelessWidget {
  const App( {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    AwesomeNotifications().setListeners(
        onActionReceivedMethod:
        NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
        NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
        NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
        NotificationController.onDismissActionReceivedMethod);

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
            create: (context) => AuthenticationCubit()),
        BlocProvider(
          create: (context) =>
              NotificationsReceivedNotificationsCubit(context: context),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthenticationCubit, AuthenticationState>(
            listener: (context, AuthenticationState state) {
              if (isOnboardingFinished(state.userAccount)) {
                router.go("/tracker");
              }
            },
          ),
          BlocListener<NotificationsReceivedNotificationsCubit,
              NotificationsReceivedNotificationsState>(
            listener: (context, NotificationsReceivedNotificationsState state) {
              // logger.d(state.action);
            },
          )
        ],
        child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: router,
              title: 'Hydromate',
              theme: Themes.lightTheme,
            );
          },
        ),
      ),
    );
  }

  bool isOnboardingFinished(UserAccount? userAccount) {
    if (userAccount == null) {
      return false;
    }
    if (userAccount.onboardingStatus == null ||
        userAccount.onboardingStatus != BooleanStatus.completed) {
      return false;
    }
    return true;
  }
}
