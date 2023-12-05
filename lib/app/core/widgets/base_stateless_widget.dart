import 'package:beebloom_water_tracker/app/core/authentication/authentication_cubit.dart';
import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseStatelessWidget<T extends BaseController, C extends BlocBase>
    extends StatelessWidget {
  final T? controller;

  const BaseStatelessWidget({this.controller, super.key});

  C createCubitAndAssignToController(BuildContext context);

  UserAccount? getLoggedUserAccount(BuildContext context) {
    AuthenticationCubit authenticationCubit =
        BlocProvider.of<AuthenticationCubit>(context);
    return authenticationCubit.state.userAccount;
  }

  C getCubit(BuildContext context) {
    return BlocProvider.of<C>(context);
  }

  initializeController(BuildContext context) {
    this.controller?.childContext = context;
  }
}
